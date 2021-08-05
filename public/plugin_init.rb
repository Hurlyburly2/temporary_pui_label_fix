module I18n
    def self.prioritize_plugins!
        self.load_path = self.load_path.reject { |p| p.match /plugins\// } + self.load_path.reject { |p| !p.match /plugins\// }
    end
end

I18n.prioritize_plugins!
I18n.load_path = I18n.load_path.reject { |p| !p.match /frontend\// } + I18n.load_path.reject { |p| p.match /frontend\// }