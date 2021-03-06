class PicturesController < ApplicationController
   
    def new_form
        render("pic_templates/new_form.html.erb")
    end    

    def create_row
        
        p = Photo.new
        p.source = params["the_source"]
        p.caption = params["the_caption"]
        p.save
        
        render("pic_templates/create_row.html.erb")
        
    end
    
    def index
        
        render("pic_templates/index.html.erb")

    end
    
    def show
       @the_id_number = params["an_id"]
       
      @pic = Photo.find(@the_id_number)
       
       @the_source = @pic.source
       @the_caption = @pic.caption
       
       
       
        render("pic_templates/show.html.erb")
    end
    
    def edit_form
    @the_id_number = params["an_id"]
       
      @pic = Photo.find(@the_id_number)
       
       @the_source = @pic.source
       @the_caption = @pic.caption
        
          render("pic_templates/edit_form.html.erb")
    end
    
    def update_row
         @the_id_number = params["an_id"]
       
      @pic = Photo.find(@the_id_number)
       
       @the_source = @pic.source
       @the_caption = @pic.caption
       
         render("pic_templates/update_row.html.erb") 
    end    


    def destroy_row
    
    
         render("pic_templates/destroy_row.html.erb")    
    end
    
    
end
    