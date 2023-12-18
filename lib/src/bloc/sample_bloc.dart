import 'package:bloc/bloc.dart';

class SampleBloc extends Bloc<SampleEvent, int> {
  SampleBloc() : super(0) {
    print('init Samplebloc');
    on<SampleEvent>((event, emit) {
      print('Event bloc');
    });
    on<AddSampleEvent>((event, emit) {
      emit(state + 1);
    });
  }
}

class SampleEvent {}

class AddSampleEvent extends SampleEvent {}
