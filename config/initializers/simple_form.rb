# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
 
  config.wrappers :bulma, tag: 'div', class: 'field', error_class: 'input-error', hint_class: 'with_hint' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max

    
    b.wrapper class: 'control' do |ba|
      ba.wrapper tag: 'label', error_class: 'label-is-invalid' do |bb|
        bb.use :label
      end
  
      ba.use :input, class: 'input', error_class: 'input is-danger'
      ba.use :hint,  wrap_with: { tag: 'div', class: 'subtitle is-6' }
      ba.use :error, wrap_with: { tag: 'div', class: 'subtitle is-6 text-is-invalid' }
    end
  end

  config.wrappers :bulma_select, tag: 'div', class: 'field', error_class: 'input-error', hint_class: 'with_hint' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :min_max

    
    b.wrapper class: 'control' do |ba|
      ba.wrapper tag: 'label', error_class: 'label-is-invalid' do |bb|
        bb.use :label
      end

      ba.use :input, class: 'input'
      ba.use :hint,  wrap_with: { tag: 'div', class: 'subtitle is-6' }
      ba.use :error, wrap_with: { tag: 'div', class: 'subtitle is-6 text-is-invalid' }
    end
  end

  config.wrappers :bulma_filter, tag: 'div', class: 'columns' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :min_max

    
    b.wrapper class: 'column' do |ba|
      ba.wrapper tag: 'label' do |bb|
        bb.use :label
      end

      ba.use :input, class: 'input'
      ba.use :hint,  wrap_with: { tag: 'div', class: 'subtitle is-6' }
      ba.use :error, wrap_with: { tag: 'div', class: 'subtitle is-6 text-is-invalid' }
    end
  end


  config.default_wrapper = :bulma

  config.boolean_style = :inline

  # Default class for buttons
  config.button_class = 'button'

  # Method used to tidy up errors. Specify any Rails Array method.
  # :first lists the first message for each field.
  # Use :to_sentence to list all errors for each field.
  config.error_method = :first

  # Default tag used for error notification helper.
  config.error_notification_tag = :div

  # CSS class to add for error notification helper.
  config.error_notification_class = 'alert alert-error'

  # ID to add for error notification helper.
  # config.error_notification_id = nil

  # Series of attempts to detect a default label method for collection.
  # config.collection_label_methods = [ :to_label, :name, :title, :to_s ]

  # Series of attempts to detect a default value method for collection.
  # config.collection_value_methods = [ :id, :to_s ]

  # You can wrap a collection of radio/check boxes in a pre-defined tag, defaulting to none.
  # config.collection_wrapper_tag = :div

  # You can define the class to use on all collection wrappers. Defaulting to none.
  # config.collection_wrapper_class = "field"

  # You can wrap each item in a collection of radio/check boxes with a tag,
  # defaulting to :span. Please note that when using :boolean_style = :nested,
  # SimpleForm will force this option to be a label.
  config.item_wrapper_tag = :div

  # You can define a class to use in all item wrappers. Defaulting to none.
  config.item_wrapper_class = 'ui checkbox'

  # How the label text should be generated altogether with the required text.
  # config.label_text = lambda { |label, required, explicit_label| "#{required} #{label}" }
  config.label_text = lambda { |label, required, explicit_label| "#{required} #{label}" }
  # Semantic UI has its own astrick

  # You can define the class to use on all labels. Default is nil.
  # config.label_class = nil

  # You can define the class to use on all forms. Default is simple_form.
  config.default_form_class = 'form'

  # You can define which elements should obtain additional classes
  # config.generate_additional_classes_for = [:wrapper, :label, :input]

  # Whether attributes are required by default (or not). Default is true.
  # config.required_by_default = true

  # Tell browsers whether to use the native HTML5 validations (novalidate form option).
  # These validations are enabled in SimpleForm's internal config but disabled by default
  # in this configuration, which is recommended due to some quirks from different browsers.
  # To stop SimpleForm from generating the novalidate option, enabling the HTML5 validations,
  # change this configuration to true.
  config.browser_validations = false

  # Collection of methods to detect if a file type was given.
  # config.file_methods = [ :mounted_as, :file?, :public_filename ]

  # Custom mappings for input types. This should be a hash containing a regexp
  # to match as key, and the input type that will be used when the field name
  # matches the regexp as value.
  # config.input_mappings = { /count/ => :integer }

  # Custom wrappers for input types. This should be a hash containing an input
  # type as key and the wrapper that will be used for all inputs with specified type.
  # config.wrapper_mappings = { string: :prepend }

  # Namespaces where SimpleForm should look for custom input classes that
  # override default inputs.
  # config.custom_inputs_namespaces << "CustomInputs"

  # Default priority for time_zone inputs.
  # config.time_zone_priority = nil

  # Default priority for country inputs.
  # config.country_priority = nil

  # When false, do not use translations for labels.
  # config.translate_labels = true

  # Automatically discover new inputs in Rails' autoload path.
  # config.inputs_discovery = true

  # Cache SimpleForm inputs discovery
  # config.cache_discovery = !Rails.env.development?

  # Default class for inputs
  # config.input_class = nil

  # Define the default class of the input wrapper of the boolean input.
  config.boolean_label_class = 'checkbox'

  # Defines if the default input wrapper class should be included in radio
  # collection wrappers.
  # config.include_default_input_wrapper_class = true

  # Defines which i18n scope will be used in Simple Form.
  # config.i18n_scope = 'simple_form'
end