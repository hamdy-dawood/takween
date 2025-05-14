import 'package:flutter_bloc/flutter_bloc.dart';

import '../../parts/adha/view/adha_screen.dart';
import '../../parts/fitr/view/fitr_screen.dart';
import '../../parts/house/view/house_screen.dart';
import '../../parts/money/view/money_screen.dart';
import '../../parts/ramadan/view/ramadan_screen.dart';
import '../../parts/school/view/school_screen.dart';
import '../../parts/street/view/street_screen.dart';
import '../../parts/supermarket/view/supermarket_screen.dart';
import '../model/takween_model.dart';

part 'takween_parts_state.dart';

class TakweenPartsCubit extends Cubit<TakweenPartsState> {
  TakweenPartsCubit() : super(TakweenPartsInitial());
  static TakweenPartsCubit get(context) => BlocProvider.of(context);
  List<TakweenPartsModel> partsList = [
    TakweenPartsModel(title: "الشارع", page: const StreetScreen()),
    TakweenPartsModel(title: "السوبر ماركت", page: const SupermarketScreen()),
    TakweenPartsModel(title: "المدرسة", page: const SchoolScreen()),
    TakweenPartsModel(title: "المنزل", page: const HouseScreen()),
    TakweenPartsModel(title: "النقود", page: const MoneyScreen()),
    TakweenPartsModel(title: "عيد الفطر", page: const FitrScreen()),
    TakweenPartsModel(title: "عيد الأضحي", page: const AdhaScreen()),
    TakweenPartsModel(title: "شهر رمضان", page: const RamadanScreen()),
  ];
}
