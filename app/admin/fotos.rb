ActiveAdmin.register Foto do
  form do |f|
    f.inputs 'Foto' do      
      f.input :picture, as: :file
      #f.input :remote_foto_url, label: 'URL da foto'
      f.buttons
    end
  end
end
