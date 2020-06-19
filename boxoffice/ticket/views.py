from django.shortcuts import render
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate
from theatre.models import *
from .models import *
from .forms import *
import datetime
from django.contrib.auth.decorators import login_required
# Create your views here.
@login_required
def ticket_confirm(request):
    form = BookingForm()
    seat_list = []
    seats = []
    replace = " "
    show_id =  request.POST.get('showid')
    show_detail = Show.objects.get(show_id=show_id)
    for seat in request.POST.getlist('seat_list'):
        seat_list.append(seat)
    no_of_tickets = len(seat_list)
    seat_no = seat_list
    for i in range(0,no_of_tickets):
        replace = seat_list[i].split('_')
        seats.append('Row: '+replace[0]+' Seat: '+replace[1])

    total = 250*no_of_tickets
    ticket_details = {'price': total,'no_of_tickets' : no_of_tickets}
    context = {'show':show_detail,'ticket_details': ticket_details,'seats_selected':seats,'form': form,'seat_list': seat_no}
    return render(request,"ticket/payment.html",context)

@login_required
def booked(request):
    show_id = request.POST.get('showid')
    no_of_seats = request.POST.get('no_of_seats')
    timestamp = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    payment_type = request.POST.get('payment_type')
    paid_amount = request.POST.get('price')
    seat_list = []
    paid_by = request.user
    for seat in request.POST.getlist('seat_list'):
        seat_list.append(seat)
    show_detail = Show.objects.get(show_id=show_id)
    for i in range(0,len(seat_list)):
        s = Seat(seat_no=seat_list[i],show=show_detail,booked_by=paid_by)
        s.save()
    book = Booking(timestamp=timestamp, payment_type=payment_type,paid_amount=paid_amount, paid_by=paid_by)
    book.save()
    return render(request,"ticket/payment_success.html")
