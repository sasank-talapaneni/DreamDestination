package com.klef.jfsd.springboot.controller;


import java.io.IOException;
import javax.sql.rowset.serial.SerialException;
import java.sql.SQLException;
import java.util.List;
import java.sql.Blob;
import org.springframework.http.MediaType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Hotel;
import com.klef.jfsd.springboot.model.HotelBooking;
import com.klef.jfsd.springboot.model.HotelsInfo;
import com.klef.jfsd.springboot.model.Tour;
import com.klef.jfsd.springboot.model.TourBooking;
import com.klef.jfsd.springboot.model.ToursInfo;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.EmailManager;
import com.klef.jfsd.springboot.service.HotelBookingServiceImpl;
import com.klef.jfsd.springboot.service.HotelService;
import com.klef.jfsd.springboot.service.HotelsInfoService;
import com.klef.jfsd.springboot.service.HotelsInfoServiceImpl;
import com.klef.jfsd.springboot.service.TourBookingServiceImpl;
import com.klef.jfsd.springboot.service.TourService;
import com.klef.jfsd.springboot.service.TourServiceImpl;
import com.klef.jfsd.springboot.service.ToursInfoServiceImpl;
import com.klef.jfsd.springboot.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
	@Autowired
	private UserService userService;
	
	 @Autowired
	    private AdminService adminService;
	 
	 @Autowired
	   private HotelService hotelService;
	 
	 @Autowired
	   private TourService tourService;
	 
	 @Autowired
	   private EmailManager emailManager;
	 
	 @Autowired
     private HotelBookingServiceImpl hotelBookingServiceImpl;
   
   @Autowired
     private TourBookingServiceImpl tourBookingServiceImpl;
   
   @Autowired
     private HotelsInfoServiceImpl hotelsInfoServiceImpl;
   
   @Autowired
     private ToursInfoServiceImpl toursInfoServiceImpl;
	 
	 @PostMapping("checkadminlogin")
	 public ModelAndView checkadminlogin(@RequestParam("adminUsername") String uname,
	                                     @RequestParam("adminPassword") String pwd,
	                                     @RequestParam("captcha") String adminCaptcha,
	                                     HttpSession session) {
	     ModelAndView mv = new ModelAndView();

	     String storedAdminCaptcha = (String) session.getAttribute("captchaCode");
	     Admin a = adminService.checkadminlogin(uname, pwd);

	     if (a != null && adminCaptcha.equals(storedAdminCaptcha)) {
	         // Redirect to adminhome.jsp
	         mv.setViewName("redirect:/adminhome");
	     } else {
	         mv.setViewName("login");
	         mv.addObject("adminMessage", "Admin Login Failed");
	     }

	     return mv;
	 }

	 @GetMapping("/adminhome")
	 public String showAdminHomePage() {
	     return "adminhome";  // Assuming "adminhome.jsp" is in your view resolver's path
	 }

	
	
	@GetMapping("/")
	public String main()
	{
		return "index";
	}
	
	@GetMapping("userreg")
	   public ModelAndView userreg()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("login");
	     return mv;
	   }
	
	@PostMapping("insertuser")
	public ModelAndView insert(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String msg = null;
		
		try
		{
			String name = request.getParameter("name");
			String dob = request.getParameter("dob");
			String city = request.getParameter("city");
			String email = request.getParameter("email");
			String pwd = request.getParameter("pwd");
			String contact = request.getParameter("contact");
			
			User user = new User();
			
			user.setName(name);
			user.setDateofbirth(dob);
			user.setCity(city);
			user.setEmail(email);
			user.setPassword(pwd);
			user.setContact(contact);
			user.setActive(true);
			
			msg = userService.adduser(user);
			mv.setViewName("login");
			mv.addObject("message",msg);
		}
		catch(Exception e)
		{
			msg = e.getMessage();
			mv.setViewName("login");
			mv.addObject("message",msg);
		}
		return mv;
	}
	   
	   @GetMapping("userlogin") // URI & method name can be different
	   public ModelAndView userlogin()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("login");
	     return mv;
	   }
	   
	   @PostMapping("checkuserlogin")
	   public ModelAndView checkuserlogin(HttpServletRequest request)
	   {
		   ModelAndView mv = new ModelAndView();

		    String email = request.getParameter("email");
		    String pwd = request.getParameter("pwd");
		    String userEnteredCaptcha = request.getParameter("captcha"); // Get entered CAPTCHA

		    HttpSession session = request.getSession();
		    String storedCaptcha = (String) session.getAttribute("captchaCode");
             
		    User user = userService.checkuserlogin(email, pwd);

		    if (user != null && userEnteredCaptcha.equals(storedCaptcha)) {
		        // CAPTCHA code is correct, proceed with login
		        session.setAttribute("uname", user.getName());  // eid is a session variable
		        session.setAttribute("uemail", user.getEmail()); // ename is a session variable
		        mv.setViewName("index");
		    } else {
		        mv.setViewName("login");
		        mv.addObject("message", "Login Failed...!");
		    }
		    return mv;
	   }
	   
	   @GetMapping("index")
	   public ModelAndView home(HttpServletRequest request)
	   {
		  HttpSession session = request.getSession();
		   
		  String uname = (String) session.getAttribute("uname");  //uname is a session variable
		  String uemail = (String) session.getAttribute("uemail"); // ename is a session variable
		   
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("index");
	     mv.addObject("uname",uname);
	     mv.addObject("uemail",uemail);
	     
	     return mv;
	   }
	   
	   @GetMapping("viewallusers")
	     public ModelAndView viewallusers() {
	         ModelAndView mv = new ModelAndView();
	       mv.setViewName("viewallusers");
	       
	       List<User> userlist = adminService.viewallusers();
	           List<Tour> tourlist = adminService.viewalltours();
	           List<Hotel> hotelList = adminService.viewallhotels();
	         
	         mv.addObject("hoteldata", hotelList);
	       
	       mv.addObject("tourdata", tourlist);
	       
	       mv.addObject("userdata", userlist);
	       
	       return mv;
	     }

	   @GetMapping("bookhotel")
	   public String bookHotel(HttpServletRequest request) {
	       HttpSession session = request.getSession();
	       String uname = (String) session.getAttribute("uname");
	       String uemail = (String) session.getAttribute("uemail");
	       
	       if (uname != null && uemail != null) {
	           return "hotelbooking"; 
	       } else {
	           return "login"; 
	       }
	   }
	   
	   @GetMapping("booktour")
	   public String bookTour(HttpServletRequest request) {
	       HttpSession session = request.getSession();
	       String uname = (String) session.getAttribute("uname");
	       String uemail = (String) session.getAttribute("uemail");
	       
	       if (uname != null && uemail != null) {
	           return "tourbooking"; 
	       } else {
	           return "login"; 
	       }
	   }
	   
	   @GetMapping("logout")
	   public String logout(HttpServletRequest request, HttpServletResponse response) {
	       HttpSession session = request.getSession();
	       session.invalidate(); 

	       return "redirect:/index";
	   }
	   
	   @PostMapping("checkhotellogin")
	   public ModelAndView checkHotelLogin(@RequestParam("hotelUsername") String username,
	                                        @RequestParam("hotelPassword") String password) {
	       ModelAndView mv = new ModelAndView();

	       // Assuming you have a service class to validate hotel login
	       Hotel hotel = hotelService.checkhotellogin(username, password);

	       if (hotel != null) {
	           // Redirect to hotel home page
	           mv.setViewName("redirect:/hotelhome");
	       } else {
	           mv.setViewName("login"); 
	           mv.addObject("hotelMessage", "Hotel Login Failed");
	       }

	       return mv;
	   }
	   @GetMapping("hotelhome")
	   public String showHotelHomePage() {
	       return "hotelhome";  // Assuming "hotelhome.jsp" is in your view resolver's path
	   }
	   
	   @PostMapping("checktourlogin")
	   public ModelAndView checktourlogin(@RequestParam("tourUsername") String uname,
	                                      @RequestParam("tourPassword") String pwd) {
	       ModelAndView mv = new ModelAndView();

	       // Assuming you have a service method to check tour login
	       Tour t = tourService.checktourlogin(uname, pwd);

	       if (t != null) {
	           // Redirect to the tourist home page (change the URL accordingly)
	           mv.setViewName("redirect:/tourhome");
	       } else {
	           // Redirect back to the login page with an error message
	           mv.setViewName("login");
	           mv.addObject("tourMessage", "Tourist Login Failed");
	       }

	       return mv;
	   }

	   @GetMapping("tourhome")
	   public String showTouristHomePage() {
	       return "tourhome";  // Assuming "touristhome.jsp" is in your view resolver's path
	   }
	   
	 
	     
	     @GetMapping("view")
	     public ModelAndView viewuserdemo(@RequestParam("id") int eid) {
	         User user = adminService.viewuserbyid(eid);

	         ModelAndView mv = new ModelAndView();
	         mv.setViewName("viewuserbyid");  // Assuming "viewuserbyid" is the JSP page to display user details
	         mv.addObject("user", user);

	         return mv;
	     }
	     
	     @GetMapping("delete")
	     public ModelAndView deleteuser() {
	         ModelAndView mv = new ModelAndView();
	         mv.setViewName("deleteuser");

	         List<User> userList = adminService.viewallusers();

	         mv.addObject("userdata", userList);

	         return mv;
	     }
	     
	     @GetMapping("delete/{id}")
	      public String deleteaction(@PathVariable("id") int eid)
	      {
	        adminService.deleteuser(eid);
	        return "redirect:/viewallusers";
	      }

	     @GetMapping("viewalltours")
	     public ModelAndView viewalltours() {
	         ModelAndView mv = new ModelAndView();
	       mv.setViewName("viewalltours");
	       
	       List<Tour> tourlist = adminService.viewalltours();
	       
	       mv.addObject("tourdata", tourlist);
	       
	       return mv;
	     }
	     
	     @GetMapping("viewallhotels")
	     public ModelAndView viewallhotels() {
	         ModelAndView mv = new ModelAndView();
	         mv.setViewName("viewallhotels");
	        
	         List<Hotel> hotelList = adminService.viewallhotels();
	        
	         mv.addObject("hoteldata", hotelList);
	        
	         return mv;
	     }
	     
	    @PostMapping("reservehotel")
	 	public ModelAndView reservehotel(HttpServletRequest request)
	 	{
	    	 HttpSession session = request.getSession();
		     String uemail = (String) session.getAttribute("uemail");
		       
	 		ModelAndView mv = new ModelAndView();
	 		
	 		String msg = null;
	 		
	 		try
	 		{
	 			String arrival = (String)request.getParameter("arrival");
	 			String departure = (String)request.getParameter("departure");
	 			String fname = request.getParameter("first_name");
	 			String lname = request.getParameter("last_name");
	 			String phone = request.getParameter("phone");
	 			String ad = request.getParameter("adults");
	 			int adults = Integer.parseInt(ad);
	 			String ch = request.getParameter("children");
	 			int children = Integer.parseInt(ch);
	 			String room = request.getParameter("room_pref");
	 			String hotelIdParam = request.getParameter("hotelId");
	 	        int hotelId = Integer.parseInt(hotelIdParam);
	 			
	 			HotelBooking book = new HotelBooking();
	 			book.setArrival(arrival);
	 			book.setDeparture(departure);
	 			book.setFirstName(fname);
	 			book.setLastName(lname);
	 			book.setEmail(uemail);
	 			book.setPhone(phone);
	 			book.setAdults(adults);
	 			book.setChildren(children);
	 			book.setRoomPref(room);
	 			book.setHotelId(hotelId);
	 			
	 			
	 			msg = hotelBookingServiceImpl.addbooking(book);
	 			mv.setViewName("bookingsucc");
	 			mv.addObject("message",msg);
	 			
	 			String fromEmail = "sasanktalapaneni@gmail.com"; // Set your email
	 	        String toEmail = uemail; // Use the user's email from the booking
	 	        String subject = "Hotel Reservation Confirmation";
	 	        String text = "Your hotel reservation has been confirmed. Arrival: " + arrival + ", Departure: " + departure +"\n"+"First Name:"+fname+"\n"+
	 	        "Last Name:"+lname+"\n"+"Email:"+uemail+"\n"+"Adults:"+adults+"\n"+"Children:"+children;

	 	        // Inject JavaMailSender
	 	        emailManager.sendEmail(fromEmail, toEmail, subject, text);
	 		}
	 		catch(Exception e)
	 		{
	 			msg = e.getMessage();
	 			mv.setViewName("hotelbooking");
	 			mv.addObject("message",msg);
	 		}
	 		return mv;
	 	}
	     
	      @PostMapping("reservetour")
		 	public ModelAndView reservetour(HttpServletRequest request)
		 	{
	    	  HttpSession session = request.getSession();
			     String uemail = (String) session.getAttribute("uemail");
		 		ModelAndView mv = new ModelAndView();
		 		
		 		String msg = null;
		 		
		 		try
		 		{
		 			String fname = request.getParameter("first_name");
		 			String lname = request.getParameter("last_name");
		 			String phone = request.getParameter("phone");
		 			String ad = request.getParameter("adults");
		 			int adults = Integer.parseInt(ad);
		 			String ch = request.getParameter("children");
		 			int children = Integer.parseInt(ch);
		 			String veh = request.getParameter("veh_pref");
		 			String room = request.getParameter("room_pref");
		 			String tourIdParam = request.getParameter("tourId");
		 	        int tourId = Integer.parseInt(tourIdParam);
		 			
		 			TourBooking book = new TourBooking();
		 			book.setFirstName(fname);
		 			book.setLastName(lname);
		 			book.setEmail(uemail);
		 			book.setPhone(phone);
		 			book.setAdults(adults);
		 			book.setChildren(children);
		 			book.setVehiclePref(veh);
		 			book.setHotelPref(room);
		 			book.setTourId(tourId);		 			
		 			
		 			msg = tourBookingServiceImpl.addbooking(book);
		 			mv.setViewName("bookingsucc");
		 			mv.addObject("message",msg);
		 			
		 			String fromEmail = "sasanktalapaneni@gmail.com"; // Set your email
		 	        String toEmail = uemail; // Use the user's email from the booking
		 	        String subject = "Tour Reservation Confirmation";
		 	        String text = "Your tour reservation has been confirmed."+"\n"+fname+lname+"\n"+"Adults:"+adults+"\n"+
		 	        "Children:"+children+"\n"+"Vehicle Preference:"+veh+"\n"+"Room Preference:"+room;

		 	        // Inject JavaMailSender
		 	        emailManager.sendEmail(fromEmail, toEmail, subject, text);
		 		}
		 		catch(Exception e)
		 		{
		 			msg = e.getMessage();
		 			mv.setViewName("tourbooking");
		 			mv.addObject("message",msg);
		 		}
		 		return mv;
		 	}
	     
	     
	       @GetMapping("viewalltourbookings")
	       public ModelAndView viewalltourbookings() {
	           ModelAndView mv = new ModelAndView();
	         mv.setViewName("viewalltourbookings");
	         
	         List<TourBooking> tourbooklist = adminService.viewalltourbookings();
	         
	         mv.addObject("tourbookdata", tourbooklist);
	         
	         List<HotelBooking> hotelbookingList = adminService.viewallhotelbookings();
	          
	           mv.addObject("hotelbookdata", hotelbookingList);
	         
	         return mv;
	       }
	  
	  @PostMapping("newhotel")
	   public ModelAndView addnewhotel(HttpServletRequest request,@RequestParam("image") MultipartFile file) throws IOException, SerialException, SQLException
	   {
		   String msg = null;
		   
		   ModelAndView mv = new ModelAndView();
		   
		   try
		   {
		   String name = request.getParameter("name");
		   String location = request.getParameter("location");
		   String description = request.getParameter("description");
		   Double cost = Double.valueOf(request.getParameter("price"));
		   
			  byte[] bytes = file.getBytes();
			  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
			  
			  HotelsInfo h = new HotelsInfo();
			  h.setName(name);
			  h.setLocation(location);
			  h.setDescription(description);
			  h.setPrice(cost);
			  h.setImage(blob);
			  
			  msg = hotelsInfoServiceImpl.AddHotel(h);
			  System.out.println(msg);
			  mv.setViewName("hotelhome");
		   }	  
		   catch(Exception e)
		   {
			   msg = e.getMessage();
			   System.out.println(msg.toString());
			   mv.setViewName("hotelhome");
		   }
		   return mv;
	   }
	     
	  @GetMapping("viewallhotelsinfo")
	   public ModelAndView viewallprodsdemo()
	   {
		   List<HotelsInfo> hotelslist = hotelsInfoServiceImpl.ViewAllHotels();
		   ModelAndView mv = new ModelAndView("hotels");
		   mv.addObject("hotelslist", hotelslist);
		   return mv;
	   }
	  
	  @GetMapping("viewallhotelsinfoadmin")
	   public ModelAndView viewallprodsadmin()
	   {
		   List<HotelsInfo> hotelslist = hotelsInfoServiceImpl.ViewAllHotels();
		   ModelAndView mv = new ModelAndView("addhotel");
		   mv.addObject("hotelslist", hotelslist);
		   return mv;
	   }
	  
	  @GetMapping("adminhotelsandtours")
	   public ModelAndView viewadmin()
	   {
		   List<HotelsInfo> hotelslist = hotelsInfoServiceImpl.ViewAllHotels();
		   List<ToursInfo> tourslist = toursInfoServiceImpl.ViewAllTours();
		   ModelAndView mv = new ModelAndView("adminview");
		   mv.addObject("hotelslist", hotelslist);
		   mv.addObject("tourslist" , tourslist);
		   return mv;
	   }
	  
	  @GetMapping("displayhotelimage")
	  public ResponseEntity<byte[]> displayhotelimagedemo(@RequestParam("id") int id) throws IOException, SQLException
	  {
	    HotelsInfo hotel =  hotelsInfoServiceImpl.ViewProductByID(id);
	    byte [] imageBytes = null;
	    imageBytes = hotel.getImage().getBytes(1,(int) hotel.getImage().length());

	    return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	  }
	  
	  @PostMapping("newtour")
	   public ModelAndView addnewtour(HttpServletRequest request,@RequestParam("image") MultipartFile file) throws IOException, SerialException, SQLException
	   {
		   String msg = null;
		   
		   ModelAndView mv = new ModelAndView();
		   
		   try
		   {
		   String name = request.getParameter("name");
		   String type = request.getParameter("type");
		   String description = request.getParameter("description");
		   String startdate = request.getParameter("startdate");
		   String enddate = request.getParameter("enddate");
		   Double cost = Double.valueOf(request.getParameter("price"));
		   
			  byte[] bytes = file.getBytes();
			  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
			  
			  ToursInfo t = new ToursInfo();
			  t.setName(name);
			  t.setType(type);
			  t.setDescription(description);
			  t.setPrice(cost);
			  t.setStartdate(startdate);
			  t.setEnddate(enddate);
			  t.setImage(blob);
			  
			  msg = toursInfoServiceImpl.AddTour(t);
			  System.out.println(msg);
			  mv.setViewName("tourhome");
		   }	  
		   catch(Exception e)
		   {
			   msg = e.getMessage();
			   System.out.println(msg.toString());
			   mv.setViewName("tourhome");
		   }
		   return mv;
	   }
	     
	  @GetMapping("viewalltoursinfo")
	   public ModelAndView viewallprods()
	   {
		   List<ToursInfo> tourslist = toursInfoServiceImpl.ViewAllTours();
		   ModelAndView mv = new ModelAndView("tours");
		   mv.addObject("tourslist", tourslist);
		   return mv;
	   }
	  
	  @GetMapping("viewalltoursinfoadmin")
	   public ModelAndView viewallprodsadmintour()
	   {
		   List<ToursInfo> tourslist = toursInfoServiceImpl.ViewAllTours();
		   ModelAndView mv = new ModelAndView("addtour");
		   mv.addObject("tourslist", tourslist);
		   return mv;
	   }
	  
	  @GetMapping("displaytourimage")
	  public ResponseEntity<byte[]> displaytourimagedemo(@RequestParam("id") int id) throws IOException, SQLException
	  {
	    ToursInfo tour =  toursInfoServiceImpl.ViewProductByID(id);
	    byte [] imageBytes = null;
	    imageBytes = tour.getImage().getBytes(1,(int) tour.getImage().length());

	    return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	  }
	  
	  @GetMapping("viewallbookings")
	  public ModelAndView viewallbookings(@RequestParam("email") String email )
	  {
		   List<TourBooking> toursbooklist = tourBookingServiceImpl.getTourBookingsByEmail(email);
		   List<HotelBooking> hotelsbooklist = hotelBookingServiceImpl.getTourBookingsByEmail(email);
		   ModelAndView mv = new ModelAndView("viewallbookings");
		   mv.addObject("toursbooklist", toursbooklist);
		   mv.addObject("hotelsbooklist", hotelsbooklist);
		   return mv;
	  }
	  
	  @GetMapping("deletehotel")
	    public String deleteHotel(@RequestParam("hotelId") int hotelId) {
	        hotelsInfoServiceImpl.deleteHotelById(hotelId);
	        return "redirect:/viewallhotelsinfo";
	    }
	  
	  @GetMapping("deletetour")
	    public String deleteTour(@RequestParam("tourId") int tourId) {
	        toursInfoServiceImpl.deleteTourById(tourId);
	        return "redirect:/viewalltoursinfo";
	    }
}
