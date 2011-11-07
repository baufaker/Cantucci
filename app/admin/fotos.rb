ActiveAdmin.register Foto do
  form do |f|
    f.inputs 'Foto' do      
      f.input :picture, as: :file
      f.buttons
    end
  end
end
