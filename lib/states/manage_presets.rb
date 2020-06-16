module TAC
  class States
    class ManagePresets < CyberarmEngine::GuiState
      def setup
        theme(THEME)

        stack width: 1.0, height: 0.1 do
          background THEME_HEADER_BACKGROUND
          label "#{TAC::NAME} ― Manage Presets", bold: true, text_size: THEME_HEADING_TEXT_SIZE
          button "Close" do
            pop_state
          end
        end
        flow width: 1.0, height: 0.9 do
          stack width: 0.33, height: 1.0 do
            background TAC::Palette::GROUPS_PRIMARY

            label "Group Presets"
            # TAC::Storage.group_presets.each do |preset|
            %w{ Hello World How Are You }.each do |preset|
              button preset, width:1.0
            end

            label "Action Presets"
            # TAC::Storage.action_presets.each do |preset|
            %w{ Hello World How Are You }.each do |preset|
              button preset, width:1.0
            end
          end

          stack width: 0.6698, height: 1.0 do
            background TAC::Palette::EDITOR_PRIMARY

            label "Editor"

            @editor = stack width: 1.0, height: 1.0, margin: 10 do
              background TAC::Palette::EDITOR_SECONDARY
              label "HELLO WORLD"
            end
          end
        end
      end
    end
  end
end