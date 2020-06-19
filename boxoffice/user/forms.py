from django import forms
from django.contrib.auth.forms import UserCreationForm,UserChangeForm
from django.contrib.auth.models import User
from django.urls import reverse_lazy
from django.views.generic.edit import FormView


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



    def clean_email(self):
        # Get the email
        email = self.cleaned_data.get('email')

        # Check to see if any users already exist with this email as a username.
        try:
            match = User.objects.get(email=email)
        except User.DoesNotExist:
            # Unable to find a user, this is fine
            return email
        raise forms.ValidationError('This email address is already in use.')

class LoginForm(forms.Form):

    username = forms.CharField(max_length=200, help_text='Required')
    password = forms.CharField(min_length=8, max_length=16, widget = forms.PasswordInput)
    class Meta:
        model = User
        fields = ('username', 'email', 'password')

    def __init__(self, *args, **kwargs):

        super(LoginForm, self).__init__(*args, **kwargs)
        self.fields['username'].widget.attrs={
            'class': 'input100',
            'name': 'username',
            'placeholder': 'Email/Username'}

        self.fields['password'].widget.attrs={
            'class': 'input100',
            'name': 'password',
            'placeholder': 'Password'}

class SendEmailForm(forms.Form):
    subject = forms.CharField(widget=forms.TextInput(attrs={'placeholder': ('Subject')}))
    message = forms.CharField(widget=forms.Textarea)
    users = forms.ModelMultipleChoiceField(label="To",
                                           queryset=User.objects.all(),
                                           widget=forms.SelectMultiple())
