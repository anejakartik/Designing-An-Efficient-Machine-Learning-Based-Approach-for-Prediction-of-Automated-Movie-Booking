from django import forms
from .models import Contact_Us

class ContactForm(forms.ModelForm):
    contact_name = forms.CharField(required=True,widget=forms.TextInput(attrs={ 'style': 'width: 70% ' }))
    contact_email = forms.CharField(required=True,widget=forms.TextInput(attrs={ 'style': 'width: 70% ' }))
    contact_subject = forms.CharField(required=True,widget=forms.TextInput(attrs={ 'style': 'width: 70% ' }))
    contact_detail = forms.CharField(required=True,widget=forms.Textarea(attrs={ 'style': 'width: 70%' }))
    error_css_class = 'error'
    class Meta:

        model = Contact_Us
        fields = ('contact_name','contact_email','contact_subject','contact_detail')

    def __init__(self, *args, **kwargs):
        super(ContactForm, self).__init__(*args, **kwargs)
        self.fields['contact_name'].label = "Your name:"
        self.fields['contact_email'].label = "Your email:"
        self.fields['contact_detail'].label = "What do you want to say?"

    def clean_contact_email(self,*args,**kwargs):
        email = self.cleaned_data.get("contact_email")
        if not "@" in email:
            raise forms.ValidationError("Invalid Email")
        return email

class SendEmailForm(forms.Form):
    subject = forms.CharField(widget=forms.TextInput(attrs={'placeholder': ('Subject')}))
    message = forms.CharField(widget=forms.Textarea)
    users = forms.ModelMultipleChoiceField(label="To",queryset=Contact_Us.objects.all(),widget=forms.SelectMultiple())
