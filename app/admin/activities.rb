ActiveAdmin.register Activity do
  
  form html: { multipart: true } do |f|
    f.inputs "Details" do
      f.input :title
      f.input :place
      f.input :description
      f.input :date
    end

    f.inputs "Pictures" do
      f.has_many :pictures do |picture|
        picture.input :picture
      end
    end

    f.buttons
  end
end
