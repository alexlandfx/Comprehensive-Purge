require 'sketchup.rb'
require 'extensions.rb'

module AlexZahn
  module ComprehensivePurge
    unless file_loaded?(__FILE__)

      extension = SketchupExtension.new('Comprehensive Purge', 'az_comprehensive_purge/comprehensive_purge.rb')
      extension.description = 'Purge Unused Components/Tags/Materials'
      extension.version     = '1.0.0'
      extension.creator     = 'Alex Zahn'
      extension.copyright   = '2023, Alex Zahn, Creative Commons.'

      Sketchup.register_extension(extension, true)

      file_loaded(__FILE__)

    end
  end # module ComprehensivePurge
end # module AlexZahn