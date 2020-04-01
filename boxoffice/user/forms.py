from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

class SignupForm(UserCreationForm):
    email = forms.EmailField(max_length=200, help_text='Required')
    class Meta:
        model = User
        fields = ('username', 'email', 'password1', 'password2')

    def __init__(self, *args, **kwargs):
        super(SignupForm, self).__init__(*args, **kwargs)
        self.fields['username'].widget.attrs={
            'class': 'input100',
            'name': 'username',
            'placeholder': 'Username'}

        self.fields['email'].widget.attrs={
            'class': 'input100',
            'name': 'email',
            'placeholder': 'Email'}

        self.fields['password1'].widget.attrs={
            'class': 'input100',
            'name': 'pass1',
            'placeholder': 'Password'}

        self.fields['password2'].widget.attrs={
            'class': 'input100',
            'name': 'pass2',
            'placeholder': 'Confirm Password'}

class SendEmailForm(forms.Form):
    subject = forms.CharField(
        widget=forms.TextInput(attrs={'placeholder': ('Subject')}))
    message = forms.CharField(widget=forms.Textarea)
    users = forms.ModelMultipleChoiceField(label="To",
                                           queryset=User.objects.all(),
                                           widget=forms.SelectMultiple())
