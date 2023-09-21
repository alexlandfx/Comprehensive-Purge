# Comprehensive Purge extension for SketchUp
# Purge unused Components, Materials, and Tags

require 'sketchup.rb'

module AlexZahn
  module ComprehensivePurge

    def self.comprehensivePurge ()
  
      model = Sketchup.active_model

      unless model.nil?

        # BEGIN UNDOABLE OPERATION
        model.start_operation('Comprehensive Purge', true, false, false)
    
        model.definitions.purge_unused
        model.materials.purge_unused
        model.layers.purge_unused
        
        # END UNDOABLE OPERATION
        model.commit_operation
        
      end # unless

    end # comprehensivePurge

    unless file_loaded?(__FILE__)

      UI.menu('Plugins').add_item('Comprehensive Purge') {self.comprehensivePurge}
      
      file_loaded(__FILE__)

    end

  end # module ComprehensivePurge
end # module AlexZahn