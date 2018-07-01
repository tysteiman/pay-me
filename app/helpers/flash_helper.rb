module FlashHelper
    def flash_class klass
        val = 'alert alert-' + case klass
        when 'alert'
            'danger'
        when 'notice'
            'success'
        else
            'info'
        end
    end
end