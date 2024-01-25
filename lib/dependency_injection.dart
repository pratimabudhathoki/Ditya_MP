import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_injection.config.dart';
	
final getIt = GetIt.instance;  
  
@InjectableInit(  
  initializerName: 'initialize', 
  preferRelativeImports: true, 
  asExtension: true, 
)  
void configureDependencies() => getIt.initialize();


