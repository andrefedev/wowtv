part of 'data.dart';

@JsonEnum(valueField: 'name')
enum Rating {
  daily("daily"),
  weekly("weekly"),
  monthly("monthly");

  final String name;

  const Rating(this.name);
}

@JsonEnum(valueField: 'name')
enum OrderBy {
  mostNew("new"),
  mostValued("valued"),
  mostRating("rating"),
  mostRelevant("relevant");

  final String name;

  const OrderBy(this.name);
}

@JsonEnum(valueField: 'name')
enum TvType {
  movie("movie"),
  serie("serie");

  final String name;

  const TvType(this.name);
}