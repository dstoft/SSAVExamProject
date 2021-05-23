//This file was generated from (Academic) UPPAAL 4.1.24 (rev. 29A3ECA4E5FB0808), November 2019

/*

*/
sup{TvController.IncrementChannelLoc3}: SinceActionTaken

/*

*/
inf{TvController.IncrementChannelLoc3}: SinceActionTaken

/*

*/
A[] not TvController.IncrementChannelLoc imply not deadlock

/*

*/
A[] (TvController.IncrementInput or FlowTv.ButtonChannelChange or FlowTv.IncrementChannelLoc or FlowTv.IncrementChannelLoc or Audio.AudioChangedLoc) imply SinceActionTaken < 2000

/*
f10.
*/
A<> User.AudioChangedLoc and Remote.MuteLoc and Audio.AudioLevel == 0 and Audio.Muted > 0 imply Audio.AudioLevel == Audio.PreviousAudioLevel

/*
f9.
*/
A<> User.AudioChangedLoc and Remote.MuteLoc and Audio.AudioLevel > 0 and Audio.Muted < 0 imply Audio.AudioLevel == 0

/*
f5.
*/
E<> TvController.InputIndex == 2

/*
f5.
*/
E<> TvController.InputIndex == 1

/*
f5.
*/
E<> TvController.InputIndex == 0

/*
n4. 
*/
A[] TvController.ChannelButtonPress2 and User.ChannelPress and Remote.ChannelPress and TvController.ChannelPressTimer < 1000 imply SwitchToChannel > 9

/*

*/
E<> Audio.AudioLevel == 10

/*

*/
E<> Audio.AudioLevel == 5

/*

*/
E<> Audio.AudioLevel == 0

/*
f2.
*/
A[] Audio.AudioLevel >= 0

/*
f1
*/
A<> User.AudioChangedLoc and Remote.DecrementAudioLoc and Audio.AudioLevel > 0 imply Audio.AudioLevel < Audio.PreviousAudioLevel

/*
f2.
*/
A[] Audio.AudioLevel <= 10

/*
f2
*/
A<> User.AudioChangedLoc and Remote.IncrementAudioLoc and Audio.AudioLevel < 10 imply Audio.AudioLevel > Audio.PreviousAudioLevel

/*
f6. and f7.
*/
A<> User.DecrementChannelLoc imply FlowTv.DecrementChannelLoc and ((FlowTv.CurrentChannel < FlowTv.PreviousChannel) or (FlowTv.CurrentChannel == 99 and FlowTv.PreviousChannel == 1))

/*
f6. and f7.
*/
A<> User.IncrementChannelLoc imply FlowTv.IncrementChannelLoc and ((FlowTv.CurrentChannel > FlowTv.PreviousChannel) or (FlowTv.CurrentChannel == 1 and FlowTv.PreviousChannel == 99))

/*
f8 and n7
*/
(TvController.OffState and User.Initial) --> TvController.Initial

/*
f3. 
*/
E<> SwitchToChannel > 9

/*
f4
*/
A[] FlowTv.CurrentChannel < 35 and FlowTv.CurrentChannel > 0
