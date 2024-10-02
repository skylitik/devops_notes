* Create IGW
* Attach to VPC not default
____

# Route Tables

* Rename defaut RT to default-pubrt
* second => 15m0-defautl-RT
* Create new RT => 15m0-pub-RT
* Select 15m0 vpc
* Edit subnet association => select 2 pub
* Edit routes => Add route 0.0.0.0/0 => target IG
* Choose 1 and 2 pub subnet => action => edit settings
* Enable auto-assign