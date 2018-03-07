$(document).ready(function(){

	// unable to pick multiple checkbox to category
   $('input.catFilter').on('change', function() {
    $('input.catFilter').not(this).prop('checked', false);  
	});

   //Delete job posting in Client dashboard
    $('body').on('click', '#deleteJob', function(){
        var id = $(this).data('id');
        var jobPosting = $(this).parents("tr");
        $('.loading').show();
            $.ajax({ 
                type: 'post',
                url: '/jobs/' + id,
                headers: {
                  'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data: {
                  _method: 'DELETE',
                },
                success: function(data) {
                   jobPosting.fadeOut(350);
                   toastr.success(' ', 'Job Posting Deleted', {timeOut: 3000, positionClass: 'toast-top-center'});
                   $('.loading').hide();
                }
            });
        });


	//Edit job posting in Client dashboard
	 $('body').on('click', '#editJob', function(){
        var id = $(this).data('id');
        $('.loading').show();
            $.ajax({ 
                type: 'get',
                url: '/jobs/' + id + '/edit',
                headers: {
                  'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(data) {
                  window.location.href = '/jobs/'+ id + '/edit';
                  $('.loading').hide();
                }
            });
        });



   // Add new Educational background
   $(document).on('click', '#addNewEducation', function(event){ 
    event.preventDefault();
   	var course = $(this).parent().siblings().find('#addCourse');
   	var school = $(this).parent().siblings().find('#addSchool');
   	var year = $(this).parent().siblings().find('#addSchoolYear');
   	var achievement = $(this).parent().siblings().find('#addAchievement');
    $('.loading').show();
	    $.ajax({ 
	        type: 'post',
	        url: '/profile/education/store',
	        headers: {
	          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	        },
	        data: {
	          course:course.val(),
	          school:school.val(),
	          year:year.val(),
	          achievement:achievement.val()
	        },success: function(data) {     
	        	course.val("");
	        	school.val("");
	        	year.val("");
	        	achievement.val("");
	            $('#educationBackgroundBody').load(' #educationBackgroundBody > div');
	            toastr.success(' ', 'Education Background Added', {timeOut: 3000, positionClass: 'toast-top-center'});
	            $('.loading').hide();
	        }
	    });
	});

   // Edit Educational Background
   $(document).on('click', '.editEducation', function(){ 
   	id = $(this).data('id');
   	var course = $(this).parent().siblings().find('#editCourse').val();
   	var school = $(this).parent().siblings().find('#editSchool').val();
   	var year = $(this).parent().siblings().find('#editSchoolYear').val();
   	var achievement = $(this).parent().siblings().find('#editAchievement').val();
    $('.loading').show();
   		 $.ajax({ 
	        type: 'post',
	        url: '/profile/education/update',
	        headers: {
	          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	        },
	        data: {
	       	  id: id,
	          course:course,
	          school:school,
	          year:year,
	          achievement:achievement
	        },success: function(data) {    
	            $('#educationBackgroundBody').load(' #educationBackgroundBody > div');
	            toastr.success(' ', 'Education Background Updated', {timeOut: 3000, positionClass: 'toast-top-center'});
	            $('.loading').hide();
	        }
	    });
   });



   // Delete Educational Background
   $(document).on('click', '.deleteEducation', function(){ 
   	id = $(this).data('id');
    $('.loading').show();
   		$.ajax({ 
	        type: 'post',
	        url: '/profile/education/delete',
	        headers: {
	          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	        },
	        data: {
	       	  id: id
	        },success: function(data) {  
	            $('#educationBackgroundBody').load(' #educationBackgroundBody > div');
	            toastr.success(' ', 'Deleted', {timeOut: 3000, positionClass: 'toast-top-center'});
	            $('.loading').hide();
	        }
	    });
  }); 	

	// Add new Educational background
   $(document).on('click', '.addNewWorkButton', function(){ 
   	var position = $(this).parent().siblings().find('#addPosition');
   	var company = $(this).parent().siblings().find('#addCompany');
   	var year = $(this).parent().siblings().find('#addWorkYear');
   	var description = $(this).parent().siblings().find('#addWorkDescription');
    $('.loading').show();
	    $.ajax({ 
	        type: 'post',
	        url: '/profile/work/store',
	        headers: {
	          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	        },
	        data: {
	          position: position.val(),
	          company: company.val(),
	          year: year.val(),
	          description: description.val()
	        },success: function(data) {     
	        	position.val("");
	        	company.val("");
	        	year.val("");
	        	description.val("");
	            $('.workBackgroundBody').load(' .workBackgroundBody > div');
	            toastr.success(' ', 'New Work Added', {timeOut: 3000, positionClass: 'toast-top-center'});
	            $('.loading').hide();
	        }
	    });
	});


    // Edit Work Background
   $(document).on('click', '.editWorkBackground', function(){ 
   	var id = $(this).data('id');
   	var position = $(this).parent().siblings().find('#editPosition').val();
   	var company = $(this).parent().siblings().find('#editCompany').val();
   	var workyear = $(this).parent().siblings().find('#editWorkYear').val();
   	var description = $(this).parent().siblings().find('#editWorkDescription').val();
    $('.loading').show();
   		 $.ajax({ 
	        type: 'post',
	        url: '/profile/work/update',
	        headers: {
	          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	        },
	        data: {
	       	  id: id,
	          position:position,
	          company:company,
	          workyear:workyear,
	          description:description
	        },success: function(data) {    
	            $('.workBackgroundBody').load(' .workBackgroundBody > div');
	            toastr.success(' ', 'Education Background Updated', {timeOut: 3000, positionClass: 'toast-top-center'});
	            $('.loading').hide();
	        }
	    });
   });

   // Delete Work Background
   $(document).on('click', '.deleteWork', function(){ 
   	var id = $(this).data('id');
		   		$.ajax({ 
			        type: 'post',
			        url: '/profile/work/delete',
			        headers: {
			          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			        },
			        data: {
			       	  id: id
			        },success: function(data) {  
			            $('.workBackgroundBody').load(' .workBackgroundBody > div');
			            toastr.success(' ', 'Deleted', {timeOut: 3000, positionClass: 'toast-top-center'});
			            $('.loading').hide();
			        }
			    });
  }); 	

   // Add Profile information
   $(document).on('click', '.addProfileButton', function(){ 
	   	var title = $(this).parent().siblings().find('#editJobTitle').val();
	   	var city = $(this).parent().siblings().find('#editCity').val();
	   	var province = $(this).parent().siblings().find('#editProvince').val();
	   	var country = $(this).parent().siblings().find('#editCountry').val();
	   	var overview = $(this).parent().siblings().find('#editOverview').val();
	    $('.loading').show();   
	   		 $.ajax({ 
		        type: 'post',
		        url: '/profile/store',
		        headers: {
		          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		        },
		        data: {
		          title:title,
		          city:city,
		          province:province,
		          country:country,
		          overview:overview
		        },success: function(data) {    
			    location.reload();
	            toastr.success(' ', 'Profile Successfully Updated', {timeOut: 3000, positionClass: 'toast-top-center'});
	            $('.loading').hide();
	        }
	    });
   });



   // Edit Profile information
   $(document).on('click', '.editProfileButton', function(){ 
	   	var id = $(this).data('id');
	   	var title = $(this).parent().siblings().find('#editJobTitle').val();
	   	var city = $(this).parent().siblings().find('#editCity').val();
	   	var province = $(this).parent().siblings().find('#editProvince').val();
	   	var country = $(this).parent().siblings().find('#editCountry').val();
	   	var overview = $(this).parent().siblings().find('#editOverview').val();
	    $('.loading').show();   
	   		 $.ajax({ 
		        type: 'post',
		        url: '/profile/edit',
		        headers: {
		          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		        },
		        data: {
		       	  id: id,
		          title:title,
		          city:city,
		          province:province,
		          country:country,
		          overview:overview
		        },success: function(data) {    
			    location.reload();
	            toastr.success(' ', 'Profile Successfully Updated', {timeOut: 3000, positionClass: 'toast-top-center'});
	            $('.loading').hide();
	        }
	    });
   });

   //Ban Users
    $(document).on('click', '.banUsers', function(){ 
    	var id = $(this).data('id');
    	$('.loading').show();
    		$.ajax({ 
	        type: 'post',
	        url: '/panel/users/ban',
	        headers: {
	          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	        },
	        data: {
	       	  id: id
	        },success: function(data) {  
	            location.reload();
	            toastr.success(' ', 'Banned', {timeOut: 3000, positionClass: 'toast-top-center'});
	            $('.loading').hide();
	        }
	    });
    });	

    //Unban Freelancers
    $(document).on('click', '.unbanFreelancer', function(){ 
    	var id = $(this).data('id');
    	$('.loading').show();
    		$.ajax({ 
	        type: 'post',
	        url: '/panel/freelancer/unban',
	        headers: {
	          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	        },
	        data: {
	       	  id: id
	        },success: function(data) {  
	            location.reload();
	            toastr.success(' ', 'User Unbanned', {timeOut: 3000, positionClass: 'toast-top-center'});
	            $('.loading').hide();
	        }
	    });
    });	

     //Unban Clients
    $(document).on('click', '.unbanClient', function(){ 
    	var id = $(this).data('id');
    	$('.loading').show();
    		$.ajax({ 
	        type: 'post',
	        url: '/panel/client/unban',
	        headers: {
	          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	        },
	        data: {
	       	  id: id
	        },success: function(data) {  
	            location.reload();
	            toastr.success(' ', 'Client Unbanned', {timeOut: 3000, positionClass: 'toast-top-center'});
	            $('.loading').hide();
	        }
	    });
    });	

    //Delete job posting in Admin Panel
    $('body').on('click', '.deleteJobPosting', function(){
        var id = $(this).data('id');
        console.log(id);
        $('.loading').show();
            $.ajax({ 
                type: 'get',
                url: '/panel/jobs/delete/'+id,
                headers: {
                  'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data: {
                  _method: 'DELETE',
                },
                success: function(data) {
                   location.reload();
                   toastr.success(' ', 'Job Posting Deleted', {timeOut: 3000, positionClass: 'toast-top-center'});
                   $('.loading').hide();
                }
            });
        });


  


});//document.ready