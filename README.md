Use this helper package to interact with the [Pantry](https://getpantry.cloud/) JSON storage API

## Getting started

Get your pantry ID from [here](https://getpantry.cloud)

## Usage

Initialize your Pantry object with the ID from above:
```dart
final pantry = Pantry("xxxx-xxxx-xxxx-xxxx-xxxx-xxxx");
```

### Create a Basket
```dart
final newBasketResult = await pantry.newBasket("My Basket", {
    "derp": "flerp123",
    "testPayload": true,
    "keysLength": 3,
});
print(newBasketResult);
```

### Retrieve Basket Contents
```dart
final basketContent = await pantry.getBasket("My Basket");
print("Basket Content: $basketContent");
```

### Update Basket Contents
```dart
final updatedBasketContent = await pantry.updateBasket("My Basket", {"new_key": "new_value"});
print("Updated Basket Content: $updatedBasketContent");
```

### Delete a Basket
```dart
final deleteBasketResult = await pantry.deleteBasket("My Basket");
print(deleteBasketResult);
```