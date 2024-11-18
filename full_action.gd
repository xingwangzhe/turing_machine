extends RichTextLabel


func tur_action_1(pos:int,state:int):
	$"../tag".text="                                                     "
	for i in range(0, $".".text.length()):
		if i==pos:
			$"../tag".text[i]='V'
		else:
			$"../tag".text[i]='.'
	if ($".".text[pos]=='0' and state==0):
		$".".text[pos]='X'
		pos+=1
		state=1
		$"../../Panel/VScrollBar/log".text+="\nq0->q1"
	elif ($".".text[pos]=='Y' and state==0):
		pos+=1
		state=3
		$"../../Panel/VScrollBar/log".text+="\nq0->q3"
	elif (($".".text[pos]=='Y' || $".".text[pos]=='0') and state==1):
		pos+=1
		$"../../Panel/VScrollBar/log".text+="\nq1->q1"
	elif ($".".text[pos]=='1' and state ==1):
		$".".text[pos]='Y'
		pos-=1
		state=2
		$"../../Panel/VScrollBar/log".text+="\nq1->q2"
	elif (($".".text[pos]=='Y'||$".".text[pos]=='0') && state ==2):
		pos-=1
		$"../../Panel/VScrollBar/log".text+="\nq2->q2"
	elif ($".".text[pos]=='X' && state==2):
		pos+=1
		state=0
		$"../../Panel/VScrollBar/log".text+="\nq2->q0"
	elif ($".".text[pos]=='Y' && state ==3):
		pos+=1
		$"../../Panel/VScrollBar/log".text+="\nq3->q3"
	elif ($".".text[pos]=='B' && state == 3):
		pos-=1
		state=4
		$"../../Panel/VScrollBar/log".text+="\nq3->q4"
	elif (($".".text[pos]=='X'||$".".text[pos]=='Y')&& state==4):
		if ($".".text[pos]=='X'):
			$".".text[pos]='0'
			pos-=1
		if ($".".text[pos]=='Y'):
			$".".text[pos]='1'
			pos-=1
		$"../../Panel/VScrollBar/log".text+="\nq4->q4"
	elif ($".".text[pos]=='B' && state==4):
		pos+=1
		state=5
		$"../../Panel/VScrollBar/log".text+="\nq4->q5"
	elif(state==5):
		pos=1
		state=0
		$"../../Panel/VScrollBar/log".text+="\nq5->end"
	for i in range(0, $".".text.length()):
		if i==pos:
			$"../tag".text[i]='V'
		else:
			$"../tag".text[i]='.'
	return [pos,state]	

func tur_action_2(pos:int,state:int,retain:String):
	$"../tag".text="                                                                                             "
	for i in range(0, $".".text.length()):
		if i==pos:
			$"../tag".text[i]='V'
		else:
			$"../tag".text[i]='.'
	if (state==0):
		if($".".text[pos]=='a'):
			$".".text[pos]='X'
			state=1
			retain='a'
			pos+=1
		elif ($".".text[pos]=='b'):
			$".".text[pos]='Y'
			state=1
			pos+=1
			retain='b'
		$"../../Panel/VScrollBar/log".text+="\nq0->q1 [retain:"+retain+"]"
	elif(state==1):
		if($".".text[pos]=='a'||$".".text[pos]=='b'):
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq1->q1 [retain:"+retain+"]"		
		elif ($".".text[pos]=='c'):
			pos+=1
			state=2
			$"../../Panel/VScrollBar/log".text+="\nq1->q2 [retain:"+retain+"]"
	elif(state==2):
		if($".".text[pos]=='X'||$".".text[pos]=='Y'):
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq2->q2 [retain:"+retain+"]"
		elif ($".".text[pos]=='a'&&retain=='a'):
			text[pos]='X'
			state=3
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq2->q3 [retain:"+retain+"]"
		elif ($".".text[pos]=='b' && retain=='b'):
			text[pos]='Y'
			state=3
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq2->q3 [retain:"+retain+"]"
	elif(state==3):
		if(text[pos]=='X'||text[pos]=='Y'):
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq3->q3 [retain:"+retain+"]"
		elif(text[pos]=='c'):
			state=4
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq3->q4 [retain:"+retain+"]"
	elif(state==4):
		if(text[pos]=='a'||text[pos]=='b'):
			state=5
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq4->q5 [retain:"+retain+"]"
		elif(text[pos]=='X'||text[pos]=='Y'):
			state=6
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq4->q6 [retain:"+retain+"]"
	elif(state==5):
		if(text[pos]=='a'||text[pos]=='b'):
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq5->q5 [retain:"+retain+"]"
		elif(text[pos]=='X'||text[pos]=='Y'):
			state=0
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq5->q0 [retain:"+retain+"]"
	elif(state==6):
		if(text[pos]=='X'||text[pos]=='Y'||text[pos]=='c'):
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq6->q6 [retain:"+retain+"]"
		elif(text[pos]=='B'):
			state=7
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq6->q7 [retain:"+retain+"]"
	elif(state==7):
		if(text[pos]=='X'||text[pos]=='Y'||text[pos]=='c'):
			if(text[pos]=='X'):
				text[pos]='a'
			elif(text[pos]=='Y'):
				text[pos]='b'
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq7->q7 [retain:"+retain+"]"
		elif(text[pos]=='B'):
			state=8
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq7->q8 [retain:"+retain+"]"
	elif(state==8):
		pos=1
		state=0
		$"../../Panel/VScrollBar/log".text+="\nq8->end [retain:"+retain+"]"
	for i in range(0, $".".text.length()):
		if i==pos:
			$"../tag".text[i]='V'
		else:
			$"../tag".text[i]='.'
	return [pos,state,retain]

func tur_action_3(pos:int,state:int):
	$"../tag".text="                                                                                             "
	for i in range(0, $".".text.length()):
		if i==pos:
			$"../tag".text[i]='V'
		else:
			$"../tag".text[i]='.'
	if(state==0):
		if(text[pos]=='c'):
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq0->q0"
		elif(text[pos]=='a'):
			text[pos]='c'
			state=1
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq0->q1"
		elif(text[pos]=='b'):
			text[pos]='B'
			state=4
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq0->q4"
	elif(state==1):
		if(text[pos]=='b'||text[pos]=='c'):
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq1->q1"
		elif(text[pos]=='a'):
			state=2
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq1->q2"
		elif(text[pos]=='B'):
			text[pos]='b'
			state=3
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq1->q3"
	elif(state==2):
		if(text[pos]=='c'||text[pos]=='b'):
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq2->q2"
		elif(text[pos]=='a'):
			text[pos]='c'
			state=1
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq2->q1"
		elif(text[pos]=='B'):
			text[pos]='b'
			state=3
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq2->q3"
	elif(state==3):
		if(text[pos]=='a'||text[pos]=='b'||text[pos]=='c'):
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq3->q3"
		elif(text[pos]=='B'):
			state=0
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq3->q0"
	elif(state==4):
		if(text[pos]=='c'):
			text[pos]='B'
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq4->q4"
		elif(text[pos]=='B'):
			state=5
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq4->q5"
	elif(state==5):
			state=0
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq5->end"
	for i in range(0, $".".text.length()):
			if i==pos:
				$"../tag".text[i]='V'
			else:
				$"../tag".text[i]='.'
	return [pos,state]
func tur_action_4(pos:int,state:int):
	$"../tag".text="                                                                                             "
	for i in range(0, $".".text.length()):
		if i==pos:
			$"../tag".text[i]='V'
		else:
			$"../tag".text[i]='.'
	if(state==0):
		if(text[pos]=='0'):
			text[pos]='B'
			state=1
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq0->q1"
		elif(text[pos]=='1'):
			text[pos]='B'
			state=5
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq1->q5"
	elif(state==1):
		if(text[pos]=='0'):
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq1->q1"
		elif(text[pos]=='1'):
			state=2
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq1->q2"
	elif(state==2):
		if(text[pos]=='1'):
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq2->q2"
		elif(text[pos]=='0'):
			state=4
			text[pos]='1'
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq2->q4"
		elif(text[pos]=='B'):
			state=3
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq2->q3"
	elif(state==3):
		if(text[pos]=='0'):
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq3->q3"
		elif(text[pos]=='1'):
			text[pos]='B'
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq3->q3"
		elif(text[pos]=='B'):
			text[pos]='0'
			state=6
			$"../../Panel/VScrollBar/log".text+="\nq3->q6"
	elif(state==4):
		if(text[pos]=='0'||text[pos]=='1'):
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq4->q4"
		elif(text[pos]=='B'):
			state=0
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq4->q0"
	elif(state==5):
		if(text[pos]=='0'||text[pos]=='1'):
			text[pos]='B'
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq5->q5"
		elif(text[pos]=='B'):
			state=6
			$"../../Panel/VScrollBar/log".text+="\nq5->q6"
	elif(state==6):
		state=0
		pos=1
		$"../../Panel/VScrollBar/log".text+="\nq6->end"
		
	for i in range(0, $".".text.length()):
		if i==pos:
			$"../tag".text[i]='V'
		else:
			$"../tag".text[i]='.'
	return [pos,state]
func tur_action_5(pos:int,state:int,retain:String):
	$"../tag".text="                                                                                             "
	for i in range(0, $".".text.length()):
		if i==pos:
			$"../tag".text[i]='V'
		else:
			$"../tag".text[i]='.'
	if(state==0):
		if(text[pos]=='c'):
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq0->q0 retain["+retain+"]"
		elif(text[pos]=='a'):
			text[pos]='c'
			state=1
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq0->q1 retain["+retain+"]"
		elif(text[pos]=='0'||text[pos]=='1'):
			state=5
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq0->q5 retain["+retain+"]"
	elif(state==1):
		if(text[pos]=='c'):
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq1->q1 retain["+retain+"]"
		elif(text[pos]=='a'):
			state=2
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq1->q2 retain["+retain+"]"
		else:
			state=3
			retain='1'
			$"../../Panel/VScrollBar/log".text+="\nq1->q3 retain["+retain+"]"
	elif(state==2):
		if(text[pos]=='c'):
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq2->q2 retain["+retain+"]"			
		elif(text[pos]=='a'):
			text[pos]='c'
			state=1
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq2->q1 retain["+retain+"]"			
		else:
			state=3
			retain='0'
			$"../../Panel/VScrollBar/log".text+="\nq2->q3 retain["+retain+"]"
	elif(state==3):
		if(text[pos]=='0'&&retain=='0'):
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq3->q3 retain["+retain+"]"
		elif(text[pos]=='1'&&retain=='0'):
			text[pos]='0'
			state=3
			retain='1'
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq3->q3 retain["+retain+"]"
		elif(text[pos]=='B'&&retain=='0'):
			state=4
			text[pos]='0'
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq3->q4 retain["+retain+"]"
		elif(text[pos]=='1'&&retain=='1'):
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq3->q3 retain["+retain+"]"
		elif(text[pos]=='0'&&retain=='1'):
			text[pos]='1'
			retain='0'
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq3->q3 retain["+retain+"]"
		elif(text[pos]=='B'&&retain=='1'):
			text[pos]='1'
			state=4
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq3->q4 retain["+retain+"]"
	elif(state==4):
		if(text[pos]=='a'||text[pos]=='c'||text[pos]=='0'||text[pos]=='1'):
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq4->q4 retain["+retain+"]"
		elif(text[pos]=='B'):
			state=0
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq4->q0 retain["+retain+"]"
	elif(state==5):
		if(text[pos]=='c'):
			pos-=1
			$"../../Panel/VScrollBar/log".text+="\nq5->q5 retain["+retain+"]"
		elif(text[pos]=='B'):
			state=6
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq5->q6 retain["+retain+"]"
	elif(state==6):
		if(text[pos]=='c'):
			text[pos]='B'
			pos+=1
			$"../../Panel/VScrollBar/log".text+="\nq6->q6 retain["+retain+"]"
		elif(text[pos]=='0'||text[pos]=='1'):
			state=7
			$"../../Panel/VScrollBar/log".text+="\nq6->q7 retain["+retain+"]"
	elif(state==7):
		state=0
		pos=1
		$"../../Panel/VScrollBar/log".text+="\nq7->end retain["+retain+"]"
	for i in range(0, $".".text.length()):
			if i==pos:
				$"../tag".text[i]='V'
			else:
				$"../tag".text[i]='.'
	return [pos,state,retain]
		
		
			
			
			
		
	
		
			
		
			

			
		
		
			
	
		
	
		
		
	

		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

	
