# encoding: utf-8

ActiveAdmin.register Foto do
  menu :label => "Página de Fotos"
  
  form do |f|
    f.inputs 'Foto' do      
      f.input :picture, as: :file, :label => "Foto"
      #f.input :remote_foto_url, label: 'URL da foto'
      f.buttons
    end
  end
end
