

  Html = {}


  
  --- Renders the given html object.
  --- @param html_object table a table representing a html object.
  --- @return string the rendered html object.
  function Html.render(html_object) end




  --- Can be passed into Html.render()
  --- @class Html.HiddenInput Table representing a hidden input field.
  --- @field type string
  --- @field name string
  --- @field value string
  Html.HiddenInput = {}



  --- Creates a new "HiddenInput" object.
  --- @param name string the name of the hidden input field.
  --- @param value string the value of the hidden input field.
  --- @return Html.HiddenInput a new hidden input object.
  function Html.HiddenInput.new(name, value) end


  --- This function can be used to check the a table
  --- if it is a valid HiddenInput object with all needed data 
  --- to be passed into the Html.render function.
  --- @param o table the table to check.
  function Html.HiddenInput.check(o) end


  --- Can be passed into Html.render()
  --- @class Html.Textarea Table representing a textarea field.
  --- @field type string
  --- @field name string
  --- @field value string
  --- @field label string
  Html.Textarea = {}



  --- Creates a new "Textarea" object.
  --- @param name string the name of the textarea field.
  --- @param value string the value of the textarea field.
  --- @param label string the html label text above the textarea field.
  --- @return Html.Textarea a new textarea object.
  function Html.Textarea.new(name, value, label) end



  --- This function can be used to check the a table
  --- if it is a valid Textarea object with all needed data 
  --- to be passed into the Html.render function.
  --- @param o table the table to check.


  --- Can be passed into Html.render()
  --- @class Html.Textinput Table representing a text input field.
  --- @field type string
  --- @field name string
  --- @field value string
  --- @field label string the html lael text above the input field.
  Html.Textinput = {}


  --- Creates a new "Textinput" object.
  --- @param name string the name of the text input field.
  --- @param value string the value of the text input field.
  --- @param label string the html label text above the input field.
  --- @return Html.Textinput a new text input object.
  function Html.Textinput.new(name, value, label) end


  --- This function can be used to check the a table
  --- if it is a valid Textinput object with all needed data 
  --- to be passed into the Html.render function.
  --- @param o table the table to check.
  function Html.Textinput.check(o) end


  --- Can be passed into Html.render()
  --- @class Html.SelectInput Table representing a select input field.
  --- @field type string
  --- @field name string
  --- @field value string
  --- @field label string the html lael text above the input field.
  --- @field options table a table with options for the select input field.
  Html.SelectInput = {}


  --- Creates a new "SelectInput" object.
  --- @param name string the name of the select input field.
  --- @param value string the value of the select input field.
  --- @param label string the html label text above the select input field.
  --- @param options table a table with options for the select input field:{ {label = "Option 1", value = "option1"}, ... }
  --- @return Html.SelectInput a new select input object.
  function Html.SelectInput.new(name, value, label, options) end


  --- This function can be used to check the a table
  --- if it is a valid SelectInput object with all needed data 
  --- to be passed into the Html.render function.
  --- @param o table the table to check.
  function Html.SelectInput.check(o) end


  --- Can be passed into Html.render()
  --- @class Html.SubmitButton Table representing a submit button field.
  --- @field type string
  --- @field name string
  --- @field render_target string
  --- @field icon string
  --- @field reload_on_success boolean
  Html.SubmitButton = {}


  --- Creates a new "SubmitButton" object.
  --- @param name string the name of the submit button field.
  --- @param render_target string "__overlay__" or "__canvas__": Where to render the rsult of the form.
  --- @param reload_on_success boolean if true, the page will be reloaded after the handler has been called.
  --- @param icon string the icon of the button: font-awesome short hand.
  --- @return Html.SubmitButton a new submit button object.
  function Html.SubmitButton.new(name, render_target, reload_on_success, icon) end



  --- This function can be used to check the a table
  --- if it is a valid SubmitButton object with all needed data 
  --- to be passed into the Html.render function.
  --- @param o table the table to check.
  function Html.SubmitButton.check(o) end



  --- Can be passed into Html.render()
  --- @class Html.Form Table representing a form.
  --- @field type string the type of the html-object: "form"
  --- @field handler_name string the name of the tree handler, this form data is sent to
  --- @field children table a table with children html objects.
  --- @field form_header string the header of the form: big text above the form.
  Html.Form = {}



  --- Creates a new "Form" object.
  --- @param handler_name string the name of the handler, this form data is sent to.
  --- @param children table a table with children html objects.
  --- @param form_header string the header of the form: big text above the form.
  --- @return Html.Form a new form object.
  function Html.Form.new(handler_name, children, form_header) end



  --- This function can be used to check the a table
  --- if it is a valid Form object with all needed data 
  --- to be passed into the Html.render function.
  --- @param o table the table to check.
  function Html.Form.check(o) end


  --- Can be passed into Html.render()
  --- @class Html.Paragraph Table representing a paragraph.
  --- @field type string the type of the html-object: "paragraph"
  --- @field text string the text of the paragraph.
  Html.Paragraph = {}


  --- Creates a new "Paragraph" object.
  --- @param text string the text of the paragraph.
  --- @return Html.Paragraph a new paragraph object.
  function Html.Paragraph.new(text) end



  --- Can be passed into Html.render()
  --- @class Html.Link Table representing a link.
  --- @field type string the type of the html-object: "link"
  --- @field href string the href of the link.
  Html.Link = {}



  
  --- Creates a new "Link" object.
  --- @param href string the href of the link.
  --- @return Html.Link a new link object.
  function Html.Link.new(href) end



 
  --- Can be passed into Html.render()
  --- @class Html.ImageLink Table representing a image link.
  --- @field type string the type of the html-object: "imagelink"
  --- @field href string the href of the image link.
  Html.ImageLink = {}




  --- Creates a new "ImageLink" object.
  --- @param href string the href of the image link.
  --- @return Html.ImageLink a new image link object.
  function Html.ImageLink.new(href) end



  --- Can be passed into Html.render()
  --- @class Html.YoutubeLink Table representing a youtube link.
  --- @field type string the type of the html-object: "youtube_link"
  --- @field href string the href of the youtube link.


  
  --- Creates a new "YoutubeLink" object.
  --- @param href string the href of the youtube link.
  --- @return Html.YoutubeLink a new youtube link object.
  function Html.YoutubeLink.new(href) end




  --- Can be passed into Html.render()
  --- @class Html.Header Table representing a header.
  --- @field type string the type of the html-object: "header"
  --- @field text string the text of the header.




  --- Creates a new "Header" object.
  --- @param text string the text of the header.
  --- @return Html.Header a new header object.
  function Html.Header.new(text) end



  
  --- Can be passed into Html.render()
  --- @class Html.FeedbackCard Table representing a feedback-card.
  --- @field type string the type of the html-object: "feedback_card"
  --- @field header string The header text of the feedback card
  --- @field text string the text of the header.
  --- @field feedback_type the type of feedback: "success", "error", "warning", "info"



  --- Creates a new feedback-html element; can be passed into Html.render(o)
  --- @param feedback_type string "success", "error", "warning", "info"
  --- @param header string The header text of the feedback-card.
  --- @param text string The body text of the feedback-card.
 function Html.FeedbackCard.new(feedback_type, header, text) end
