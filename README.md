# πΉμ₯¬μ€ λ©μ΄μ»€

## π λͺ©μ°¨
1. [μκ°](#-μκ°)
2. [Tree](#-Tree)
3. [κ³ λ―Όν μ ](#-κ³ λ―Όν-μ )
4. [νμλΌμΈ](#-νμλΌμΈ)
5. [μ€ν νλ©΄](#-μ€ν-νλ©΄)
6. [νΈλ¬λΈ μν](#-νΈλ¬λΈ-μν)
7. [μ°Έκ³  λ§ν¬](#-μ°Έκ³ -λ§ν¬)

## π± μκ°

`Dragon`κ³Ό `mene` νμ΄ λ§λ  μ₯¬μ€ λ©μ΄μ»€ μ±μλλ€.

- KeyWords

  - [UIKit]
      - `navigation bar`
      - `button`
      - `alert`
      - `stepper`
      - `Modality`
          - `instantiateViewController` / `performSegue`
      - `data observing`
          - `singleton pattern` / `KVO` / `notification center`
      - `IBOutlet`
          - `UILabel` / `UIButton` / `UIStepper`
              - `tag` / `weak`,`strong` reference
      - `Auto layout`
          - UIButton body size `compact` / `regular` 

## π² Tree

```
JuiceMaker
βββ Controller
βΒ Β  βββ AppDelegate.swift
βΒ Β  βββ ChangeInventoryViewController.swift
βΒ Β  βββ HomeViewController.swift
βΒ Β  βββ SceneDelegate.swift
βΒ Β  βββ Info.plist
βββ Model
βΒ Β  βββ Fruit.swift
βΒ Β  βββ FruitStore.swift
βΒ Β  βββ Juice.swift
βΒ Β  βββ JuiceMaker.swift
βΒ Β  βββ MakeFruitError.swift
βββ View
 Β Β  βββ Assets.xcassets
 Β Β  βΒ Β  βββ AccentColor.colorset
 Β Β  βΒ Β  βΒ Β  βββ Contents.json
 Β Β  βΒ Β  βββ AppIcon.appiconset
 Β Β  βΒ Β  βΒ Β  βββ Contents.json
 Β Β  βΒ Β  βββ Contents.json
 Β Β  βββ Base.lproj
 Β Β      βββ LaunchScreen.storyboard
 Β Β      βββ Main.storyboard
```
 
## π κ³ λ―Όν μ 

### Step 1

- "FruitStoreκ° κ΄λ¦¬νλ κ³ΌμΌμ μ’λ₯ : λΈκΈ°, λ°λλ, νμΈμ ν, ν€μ, λ§κ³ "λ₯Ό `tuple`μ μ¬μ©ν μ§, `Dictionary`λ₯Ό μ¬μ©νμ¬ κ΅¬νν μ§ κ³ λ―Όν΄ λ³΄μμ΅λλ€.
  - Fruit νμμ κ°κ³Ό μ¬κ³  μλμ λ¬Άμ΄μ μ¬μ©ν  μ μλ λμλλ¦¬λ₯Ό μ¬μ©νλ κ²μΌλ‘ κ²°μ νμμ΅λλ€.

- FruitStore μ΄κΈ°ν μ μ΄κΈ°μ¬κ³  10κ°λ₯Ό μ μ©νλ λ°©λ²μ λν΄μ κ³ λ―Όνμ΅λλ€.
  - μ²μμλ `var stock: [Fruit : Int] = [.strawBerry : 10, .banana : 10, .pineApple : 10, .kiwi : 10, .mango : 10]` μ²λΌ λμλλ¦¬μ μ΄κΈ°κ°μ ν λΉνλ λ°©λ²μ μκ°ν΄λ΄€μ§λ§, λ§€μ§λλ²λ₯Ό μ¬μ©νμ§ μλ λ°©λ²μ κ³ λ―Όνλ€`init(initialFruitCount: Int)`μΌλ‘ νλΌλ―Έν°λ₯Ό λ°μ μ€μ νλλ‘ λ³κ²½νμμ΅λλ€.

- `Juice` enumμμ νλ‘νΌν°λ‘ recipeλ₯Ό λ°μμ€λ λ°©λ²κ³Ό JuiceMaker κ΅¬μ‘°μ²΄ μμμ λ©μλλ‘ recipeλ₯Ό λ°ννλ λ°©λ²μ λν΄ κ³ λ―Όν΄λ³΄μμ΅λλ€. enumμμ νλ‘νΌν°λ₯Ό μ¬μ©νλ λ°©λ²μ κ³΅λΆν΄λ³΄κ³  μ΅μν΄μ§κΈ° μν΄μ μ΄λ²μλ enumμ νλ‘νΌν°λ₯Ό μ¬μ©ν΄ λ³΄μμ΅λλ€.

- κ° κ³ΌμΌμ μλ nκ°λ₯Ό λ³κ²½νλ κΈ°λ₯μ λν΄ Intκ°μ λ°μμ μ°μ°νλ ν¨μλ₯Ό μκ°ν΄ λ³΄μμΌλ, μ€ν λ¦¬ λ³΄λμμ λ³΄μ¬μ§λ μ¬κ³  μμ  νλ©΄μ΄ `+`/`-`λ‘ κ΅¬νλμ΄ μλ κ²μ νμΈνμ¬ `addToInventory`μ `removeToInventory`μΌλ‘ λΆλ¦¬νμ¬ κ΅¬ννμμ΅λλ€. 

- νμ¬ μ¬κ³ λ₯Ό νμΈνλ λ°©λ²μΌλ‘ `checkStock`ν¨μλ₯Ό κ΅¬ννμλλ°, κΈ°λ₯μ ν¨μλ‘ κ΅¬λΆμ§μ΄ λκ³  μ¬μ©ν μ§ λλ λμλλ¦¬μμ κ°μ κ·Έλλ‘ κ°κ³  μμ μ¬μ©ν μ§ κ³ λ―Όν΄ λ³΄μμ΅λλ€.

### Step 2

- Alertμ μ²μμΌλ‘ κ΅¬νν΄λ³΄λ©΄μ [HIG - Alert](https://developer.apple.com/design/human-interface-guidelines/components/presentation/alerts)μ λ¨Όμ  μ½κ³  νμμ μμνμμ΅λλ€.

- `μ¬κ³ μμ ` λ²νΌ ν΄λ¦­ μ νλ©΄μ΄λ λ°©λ²μ λν΄ κ³ λ―Όν΄λ³΄μμ΅λλ€.
    - μ²μ λ°μλ νλ‘μ νΈ νμΌμλ λ€λΉκ²μ΄μ μ½νΈλ‘€λ¬κ° 2κ°λ‘ κ΅¬νλμ΄ μμλλ° μ₯¬μ€μ£Όλ¬Έ νλ©΄μμ `μ¬κ³ μμ `μ΄λΌλ μλ‘μ΄ contextλ₯Ό λ§λλ κ²μ΄λΌ μκ°νκ³  `Modal`μ μ¬μ©νμμ΅λλ€.
    - μ΄λν μ¬κ³ μμ  viewμμ μ₯¬μ€μ£Όλ¬Ένλ©΄μΌλ‘ λμμ¬ λ°©λ²μ΄ μμ΄μ `Close`λ²νΌμ κ΅¬ννμμ΅λλ€.

- μκ΅¬μ¬ν­μμ "μ¬κ³ κ° μλ κ²½μ° `μ` μ νμ μ¬κ³ μμ νλ©΄μΌλ‘ μ΄λ / `μλμ€` μ νμ μΌλΏλ«κΈ°"λ‘ κΈ°μ λμ΄ μμλλ° HIGμμ "you can use βOKβ for acceptance, avoiding βYesβ and βNo.β Always use βCancelβ to title a button that cancels the alertβs action."λΌλ λΆλΆμ νμΈνμμ΅λλ€. 
    - νμμ΄μλ€λ©΄ κΈ°νμμ μμνκ³  μκ΅¬μ¬ν­μ μμ νλ κ²μ΄ λ§κ² μ§λ§ HIGλ₯Ό λ°λ₯΄λ κ²μΌλ‘ κ²°μ νκ³  `μ` / `μλμ€` λμ  `μ·¨μ` / `μ¬κ³ μμ ` μΌλ‘ λ³κ²½νμ¬ κ΅¬ννμμ΅λλ€.

### Step 3

- λ·° μ»¨νΈλ‘€λ¬ μ¬μ΄μμ κ³ΌμΌ μ¬κ³  λ°μ΄ν°λ₯Ό μ λ¬νλ λ°©μμ λν΄ μ¬λ¬ λ°©λ²μ μκ°ν΄ λ³΄μμ΅λλ€. 
    - μ²μμλ juiceMaker νμΌμ `store`λ₯Ό staticμΌλ‘ μ€μ νμ¬ μ¬μ©νμμ΅λλ€.
    - λ¦¬ν©ν λ§νλ©΄μ FruitStore ν΄λΌμ€μ `singleton pattern`μ μ μ©νμμ΅λλ€.

- `HomeViewController`μμ μΈλ²€ν λ¦¬μ μλ κ°μ κ°μ Έμ€λ λ°©λ²μ λν΄ κ³ λ―Όν΄λ³΄μμ΅λλ€.
    - UIViewController View State Methodμμ `ViewWillAppear`ν¨μλ₯Ό μ¬μ©νμ¬ λ·°κ° μ¬λΌμ¬ λλ§λ€ λ°μ΄ν°λ₯Ό κ°μ Έμ¬ μ μλλ‘ κ΅¬ννμμ΅λλ€.
        - ViewWillAppearν¨μ νμ©μ μν΄ `presentChangeInventoryViewController`ν¨μμμ `changeInventoryVC.modalPresentationStyle = .fullScreen`μΌλ‘ μ€μ ν΄μ£Όμμ΅λλ€.

- `ChangeInventoryViewController`μμ Stepperμ valueλ₯Ό Stepperλ₯Ό λλ₯΄λ μκ° νλμ ν¨μμμ κ°μ κ°μ Έμ€κ³  λ μ΄λΈμ μλ°μ΄νΈνκ³  μ¬κ³ μ λ°μνλ μΌλ ¨μ λμμ νλλ‘ κ΅¬ννλ €κ³  μλν΄λ³΄μμ΅λλ€.
    - `ViewDidLoad` ν¨μμμ `ChangeInventoryViewController`λ‘λ©μ΄ μλ£λλ©΄  Stepperμ Valueλ₯Ό κ°μ Έμ€λ λ°©μμΌλ‘ μ΅μ’ κ΅¬ννμμ΅λλ€.

- κ°κ°μ view elementsμ μ¬μ©λ°©λ²μ λν΄ κ³ λ―Όν΄ λ³΄μμ΅λλ€.
    - `tag`λ₯Ό μ¬μ©νλ λ°©λ², `IBOutlet`μ μ μΈνμ§ μκ³  μ½λλ¨μμ μ²λ¦¬νλ λ°©λ² λ±μ μ μ©ν΄ λ³΄μμ΅λλ€.

- Auto Layoutμ μ μ©νκΈ° μν΄ κ³΅λΆν΄ λ³΄μμ΅λλ€.
    - κ°κ°μ μμμ μ μ½μ λ€ μ μ©νκΈ°λ μ΄λ €μΈ κ² κ°μμ `Vertical Stack View`λ₯Ό μ¬μ©νμ¬ κ³ΌμΌ/κ°―μ λ μ΄λΈ / μ€ννΌλ₯Ό λ¬Άμ΄μ£Όκ³ , 5κ°μ κ³ΌμΌ λ¬Άμμ `Horizontal Stack View`λ₯Ό μ΄μ©νμ¬ λ€μ λ¬Άμ΄μ£Όμμ΅λλ€.
    - `HomeViewController` νλ©΄μμ κΈ°κΈ° μ¬μ΄μ¦κ° μμ κ²½μ° λ²νΌμ νμ€νΈκ° "νμΈ..μ£Όλ¬Έ"μΌλ‘ λΈμΆλλ λ¬Έμ λ₯Ό ν΄κ²°νκΈ° μν΄ νλ©΄ν¬κΈ°μ λ°λΌ ν°νΈμ¬μ΄μ¦κ° μ‘°μ λλλ‘ κ΅¬ννμμ΅λλ€.
        - μ²μ μκ°ν λ°©λ²: λ²νΌμ νμ€νΈλ₯Ό 2μ€λ‘ μ€λ°κΏνμ¬ λ³΄μ¬μ£Όλ©΄ ...μΌλ‘ μλ΅λμ§ μμ κ² κ°μ λ²νΌ titleμ `Plain`μμ `Attributed`λ‘ λ³κ²½νκ³  μ€λ°κΏν΄ λ³΄μμ§λ§ λ²νΌ νμ€νΈμ μ²«λ²μ§Έ μ€λ§ λΈμΆλλ λ¬Έμ κ° μμμ΅λλ€
        - ν΄κ²°λ°©μ: ν°νΈμμ Bodyλ‘ `Compact` & `Regular` κ°κ°μ μ¬μ΄μ¦λ₯Ό μ£Όμ΄ μμ νλ©΄μμλ ν°νΈκ° "..."μΌλ‘ μλ΅λμ§ μλλ‘ κ΅¬ννμμ΅λλ€.
    
## β° νμλΌμΈ

<details>
<summary>Step 1 νμλΌμΈ</summary>
    
- **220830**
    - Enum `Fruit`νμΌ μΆκ°
    - `FruitStore` ν΄λμ€μμ `addToStore`λ©μλ μΆκ°
    - `FruitStore` ν΄λμ€μμ `removeToStore`λ©μλ μΆκ°
    - Enum `Juice`νμΌ μΆκ°νκ³  recipe νλ‘νΌν°μμ νμν κ³ΌμΌ λμλλ¦¬ κ° μ μ₯νλλ‘ κ΅¬ν
    - `JucieMaker` κ΅¬μ‘°μ²΄μμ `checkRecipe` λ©μλ μΆκ°
    - `Juice` enumμ String rawValue μΆκ°νμ¬ μ₯¬μ€ μ΄λ¦μΌλ‘ μ¬μ©νλλ‘ κ΅¬ν
    - `JuiceMaker` κ΅¬μ‘°μ²΄μμ `makeJuice` λ©μλ κ΅¬ν
    - `JuiceMaker` κ΅¬μ‘°μ²΄μμ κ³ΌμΌμ νμ¬ μ¬κ³ λ₯Ό μΆλ ₯νλ `checkStock`ν¨μ μΆκ°
    
- **220831**
    - Step1 PR λ¦¬λ·° μμ²­
        - [PRλ³΄λ¬κ°κΈ°](https://github.com/yagom-academy/ios-juice-maker/pull/255)

</details>
    
<details>
<summary>Step 2 νμλΌμΈ</summary>   
    
### Step 2

- **220902**
    - κ³ΌμΌ μ¬κ³ λ₯Ό λ³κ²½ν  μ μλ `ChangeInventoryViewController` μμ± λ° Modalityνλ©΄μ ν κ΅¬ν
    - κ³ΌμΌμ£Όλ¬Έλ²νΌ ν΄λ¦­μ Alert λμ κ΅¬ν
    
- **220906**
    - μ₯¬μ€ μ£Όλ¬Έ λ²νΌ ν΄λ¦­μ μ±κ³΅/μ€ν¨ μ¬λΆλ₯Ό μλ €μ£Όλ μΌλΏ μμ±νλ `showAlert`ν¨μ κ΅¬ν
    - Inventoryμ μλ fruit κ°―μλ₯Ό νμΈνλ `checkInventory`ν¨μ μΆκ°
    - μ¬κ³ κ° λΆμ‘±ν  κ²½μ° λΈμΆλλ μΌλΏμ `μ¬κ³ μμ ` ν΄λ¦­μ μ¬κ³ μμ  λͺ¨λ¬λ‘ μ΄λνλ `presentChangeInventoryViewController` ν¨μ κ΅¬ν
    - `makeJuice`ν¨μμμ κ³ΌμΌ λκ°κ° νμν κ²½μ° μ²«λ²μ§Έ κ³ΌμΌμ μΆ©λΆνκ³  λλ²μ§Έ κ³ΌμΌμ΄ λΆμ‘±ν  λ μ²«λ²μ§Έ κ³ΌμΌμ΄ μ°¨κ°λ ν μ₯¬μ€μμ± μ€ν¨νλ μΌλΏμ΄ λ¨λ μλ¬ μμ 
    - μ κ·Όμ μ΄ μ€μ  λ° μ½λ© μ»¨λ²€μ ν΅μΌ
    - Step2 PR λ¦¬λ·° μμ²­
        - [PRλ³΄λ¬κ°κΈ°](https://github.com/yagom-academy/ios-juice-maker/pull/261)
    
- **220908**
    - review μ μ©νμ¬ λ¦¬ν©ν λ§
        - `checkInventory`ν¨μμμ stockLableκ° μ΅μλ λ°μΈλ©νμ§ μκ³  μ§μ  κ°μ Έμ€λλ‘ μμ 
        - `showAlert`ν¨μ `showSuccessAlert`κ³Ό `showFailAlert`μΌλ‘ λΆλ¦¬
        - κ°κ°μ‘΄μ¬νλ μ₯¬μ€μ£Όλ¬Έ λ²νΌ ν¨μλ₯Ό`orderFruitJuice`νλμ ν¨μμμ μ²λ¦¬νλλ‘ λ³κ²½
    
</details>
 
<details>
<summary>Step 3 νμλΌμΈ</summary>   
    
### Step 3

- **220912**
    - μΌλΏλ§λλ showAlertν¨μ `showSuccessAlert`κ³Ό `showFailAlert`μΌλ‘ λΆλ¦¬
    - κ°κ°μ ActionButtonμ ν΅ν©νμ¬ νλμ `orderFruitJuice` ν¨μμμ μ²λ¦¬νλλ‘ λ¦¬ν©ν λ§
        - UIButtonμ JuiceνμμΌλ‘ λ³νν΄μ£Όλ `takeJuiceMenu`ν¨μλ₯Ό μμ±νμ¬ λ΄λΆμμ μ¬μ©νλλ‘ κ΅¬ν
    - ChangeInventoryVCμμ μ¬κ³  μλ°μ΄νΈ ν  μ μλλ‘ JuiceMaker κ΅¬μ‘°μ²΄μ `store` staticμΌλ‘ λ³κ²½
    - ChangeInventoryVCμμ `takeFruitLabel`ν¨μ μμ±
    - Stepper ChangeInventoryViewControllerμ μ°κ²° ν λμ κ΅¬ν
    - Stepper μ΄κΈ°κ°μ μ§μ νλ `checkStepperValue` ν¨μ κ΅¬ν
    - ChangeInventoryViewControllerκ° dismissλ  λ μ΅μ’ Labelκ°μ μΈλ²€ν λ¦¬μ λ΄μμ£Όλ `updateInventory` ν¨μ κ΅¬ν
    - μ¬κ³ μΆκ°νλ©΄ `μ λͺ©`κ³Ό `λ«κΈ°` λ²νΌ κ΅¬νλ₯Ό μν NavigationController μΆκ°
    - ChangeInventoryVCμ `StackView` & `AutoLayout` μ μ©
    - Stepperλ₯Ό λ§€κ°λ³μλ‘ λ°μ κ³ΌμΌ νμμ λ°ννλ `takeFruit` ν¨μ κ΅¬ν
    - `updateInventory` ν¨μ μ­μ νκ³  `setFruitStock` ν¨μμμ μΈλ²€ν λ¦¬ κ° μλ°μ΄νΈ νλλ‘ μμ 
    - HomeViewControllerμ κΈ°κΈ°λ³ λ²νΌ νμ€νΈ ν¬κΈ° μ‘°μ μ μν `compact`, `regular` ν°νΈμ¬μ΄μ¦ μ μ©
    - ChangeInventoryVC Auto Layoutκ°μ μ μν΄ `alignment`, `spacing` μ‘°μ 
    - Step3 PR λ¦¬λ·° μμ²­
        - [PRλ³΄λ¬κ°κΈ°](https://github.com/yagom-academy/ios-juice-maker/pull/273)

- **220914**
    - `ChangeInventoryViewController` μ½λ μλν μ μ©
    - review μ μ©νμ¬ λ¦¬ν©ν λ§
        - FruitStore `Singleton Disign pattern` μ μ©
    - μΌλΏ μμ±νλ 2κ°μ ν¨μ `showSuccessAlert`κ³Ό `showFailAlert`λ₯Ό titleκ³Ό messageλ₯Ό λ§€κ°λ³μλ‘ λ°λ νλμ ν¨μ `makeAlert`μΌλ‘ λ¦¬ν©ν λ§
    - `ChangeInventoryVC`μμ Stepperλ₯Ό IBOutletμ μ¬μ©νμ§ μκ³  `tag`λ₯Ό μ¬μ©νλλ‘ λ¦¬ν©ν λ§
    
 </details>
    
## π± μ€ν νλ©΄

|iPhone 12 Pro Max|
|:--:|
|![](https://i.imgur.com/DfWpxSc.gif)|

|iPod touch(7th gen)|
|:--:|
|![](https://i.imgur.com/N2JbTc4.gif)|

## β νΈλ¬λΈ μν

### Step 1

- μ₯¬μ€λ₯Ό λ§λλλ° νμν κ³ΌμΌ κ°μ(`recipe`)λ₯Ό λ°μμ€λ λ°©λ²μ κ³ λ―Όνμ΅λλ€.

  - κΈ°μ‘΄μ½λ (ν¨μλ‘ Returnνμ¬ μ¬μ©)

  ```swift
     func checkRecipe(of juice: Juice) -> [Fruit: Int] {
        switch juice {
        case .strawBerry:
            return [.strawBerry: 16]
        case .banana:
            return [.banana: 2]
        case .pineApple:
            return [.pineApple: 2]
        case .kiwi:
            return [.kiwi: 3]
        case .mango:
            return [.mango: 3]
        case .strawBerryBanana:
            return [.strawBerry: 10, .banana: 1]
        case .mangoKiwi:
            return [.mango: 2, .kiwi: 1]
        }
    }
  
  let recipe = checkRecipe(of: juice)
          
  ```

  - λ³κ²½μ½λ (Enum-property μ¬μ©)

  ```swift
  enum Juice: String {
    case strawBerry = "λΈκΈ°"
    case banana = "λ°λλ"
    case pineApple = "νμΈμ ν"
    case kiwi = "ν€μ"
    case mango = "λ§κ³ "
    case strawBerryBanana = "λΈλ°"
    case mangoKiwi = "λ§κ³ ν€μ"

    var recipe: [Fruit: Int] {
        switch self {
        case .strawBerry:
            return [.strawBerry: 16]
        case .banana:
            return [.banana: 2]
        case .pineApple:
            return [.pineApple: 2]
        case .kiwi:
            return [.kiwi: 3]
        case .mango:
            return [.mango: 3]
        case .strawBerryBanana:
            return [.strawBerry: 10, .banana: 1]
        case .mangoKiwi:
            return [.mango: 2, .kiwi: 1]
        }
     }
  }
  
  let recipe = juice.recipe
  ```

### Step 2

- `JuiceMaker.swift`νμΌμ makeJuice ν¨μμμ μ₯¬μ€ λ μνΌκ° 2κ°μΌ λ, μ²«λ²μ§Έ κ³ΌμΌμ΄ μ¬κ³ κ° μκ³  2λ²μ§Έ κ³ΌμΌμ μ¬κ³ κ° λΆμ‘±ν μΌμ΄μ€μμ forλ¬Έ μμμ μ²«λ²μ§Έ κ³ΌμΌ μ¬κ³ κ° μ°¨κ°λκ³  κ·Έ νμ "μ¬κ³ κ° λΆμ‘±ν©λλ€"κ° λ¨λ λ¬Έμ κ° μμμ΅λλ€.

    - ν΄κ²°λ°©μ: forλ¬Έμ 2λ² λλ € μ²«λ²μ§Έ forλ¬Έμμ μ΄μ μμ κ²½μ° falseλ‘ λ°ν, μ΄μ μμ κ²½μ° λ€μ forλ¬Έμ ν΅ν΄ inventoryμ κ°μ μ μ©μμΌμ£Όλ λ°©μμΌλ‘ λ³κ²½νμμ΅λλ€.

- κ°κ°μ `@IBAction` λ²νΌμ ν λΉλμ΄ μλ μ€λ³΅μ½λλ₯Ό νλλ‘ λ§λ€μ΄ λ³΄κΈ° μν΄ κ³ λ―Όν΄λ³΄μμ΅λλ€.

```swift
@IBAction private func orderStrawberryJuice(_ sender: UIButton) {
        showAlert(of: .strawBerry)
        checkInventory()
    }

  ...

@IBAction private func orderMangoKiwi(_ sender: UIButton) {
        showAlert(of: .mangoKiwi)
        checkInventory()
    }
```

μ²«λ²μ§Έ μκ°ν λ°©λ²μ Juice.swift enumμ rawValueλ₯Ό Intλ‘ λ³κ²½νκ³  κ°κ°μ μ₯¬μ€ μ£Όλ¬Έ λ²νΌμ tagλ₯Ό μ€μ νμ¬ Juice(rawValue: sender.tag)λ‘ μ₯¬μ€νμμ λΆλ¬μμ μ μ©νλ λ°©λ²μ΄μμ΅λλ€.

```swift
@IBAction private func orderFruitJuice(_ sender: UIButton) {
        guard let juice = Juice(rawValue: sender.tag) else { return }
         
        if juiceMaker.makeJuice(of: juice) {
            showSuccessAlert(of: juice)
            checkInventory()
        } else {
            showFailAlert()
        }
    }

enum Juice: Int {
    case strawBerry = 1
    case banana = 2
    case pineApple = 3
    case kiwi = 4
    case mango = 5
    case strawBerryBanana = 6
    case mangoKiwi = 7
    
    var name: String {
        switch self {
        case .strawBerry:
            return "λΈκΈ°"
        case .banana:
            return "λ°λλ"
        case .pineApple:
            return "νμΈμ ν"
        case .kiwi:
            return "ν€μ"
        case .mango:
            return "λ§κ³ "
        case .strawBerryBanana:
            return "λΈλ°"
        case .mangoKiwi:
            return "λ§κ³ ν€μ"
        }
    }
}
```
μ΄λ κ² μ μ©ν  κ²½μ° λ²νΌμ tagλ₯Ό Int νμμΌλ‘λ§ μ€μ ν  μ μμ΄ κ°κ°μ λ²νΌμ λͺλ²μ tagλ₯Ό κ°λμ§ μ§κ΄μ μΌλ‘ μ μ μλ€λ λ¨μ μ΄ μμμ΅λλ€. λ§€μ§λλ²κ° λμ΄ μΆνμ μλ‘μ΄ μ₯¬μ€κ° μΆκ°λκ±°λ μ μ§λ³΄μκ° μ΄λ €μΈ κ² κ°μ λ€λ₯Έ λ°©λ²μ μκ°ν΄ λ³΄μμ΅λλ€. (enumμ rawValueκ° Intλ‘ λ³κ²½λ¨μ λ°λΌ μΆκ°μ μΌλ‘ nameμ΄λΌλ μ°μ°νλ‘νΌν°λ μμ±ν΄ μ€μΌν΄μ λΆνΈνμ΅λλ€.)

λ€μ μκ°ν΄ λ³Έ λ°©λ²μ senderλ‘ λ°μ λ²νΌμ juice νμμΌλ‘ λ³νν΄μ£Όλ takeJuiceMenuν¨μλ₯Ό μμ±νμ¬ Juice νμμΌλ‘ λ°ννκ³  κ·Έ κ°μ makeJuiceν¨μμ νλΌλ―Έν°λ‘ μ¬μ©νμμ΅λλ€.

```swift
@IBAction private func orderFruitJuice(_ sender: UIButton) {
       guard let juice = takeJuiceMenu(of: sender) else { return }
        
        if juiceMaker.makeJuice(of: juice) {
            showSuccessAlert(of: juice)
            checkInventory()
        } else {
            showFailAlert()
        }
    }

 func takeJuiceMenu(of sender: UIButton) -> Juice? {
        switch sender {
        case strawberryBananaJuiceOrderButton:
            return .strawBerryBanana
        case mangoKiwiJuiceOrderButton:
            return .mangoKiwi
        case strawberryJuiceOrderButton:
            return .strawBerry
        case bananaJuiceOrderButton:
            return .banana
        case pineappleJuiceOrderButton:
            return .pineApple
        case kiwiJuiceJuiceOrderButton:
            return .kiwi
        case mangoJuiceOrderButton:
            return .mango
        default:
            return nil
        }
    }
```

### Step 3

- Stepperμ @IBOutletμ μ¬μ©νμ§ μκ³  μ½λλ₯Ό κ°μννκΈ° μν΄ `tag`λ₯Ό μ¬μ©νμ¬ λ¦¬ν©ν λ§νμμ΅λλ€.
    - @IBActionμμ Switchλ¬Έμ μ¬μ©νμ¬ tag μ μκ°μ λ°λΌ κ° κ³ΌμΌμ κ° λ³κ²½
    - tagλ‘ μ€μ ν Stepperμ κ°―μλ₯Ό `setFruitStepper`ν¨μμ λ§€κ°λ³μλ‘ μλ ₯νλ©΄ UIViewμμ viewWithTagκΈ°λ₯μ μ¬μ©νμ¬ UIStpperλ‘ λ€μ΄μΊμ€νμ νμ¬ Stepperκ°μ λ°°μ΄μ μ μ₯
    - `setFruitSteppr`ν¨μλ₯Ό ν΅ν΄ λ°°μ΄μ μ μ₯λ UIStepperμ forλ¬Έμ ν΅ν΄ inventoryμ fruitκ°μ Stepperμ μ΄κΈ°κ°μΌλ‘ μ€μ 
    
    ```swift
    @IBAction private func setFruitStock(_ sender: UIStepper) {
        switch sender.tag {
        case 1:
            strawberryStockLabel.text = Int(sender.value).description
            juiceMaker.store.inventory[.strawberry] = Int(sender.value)
        case 2:
            bananaStockLabel.text = Int(sender.value).description
            juiceMaker.store.inventory[.banana] = Int(sender.value)
        case 3:
            pineappleStockLabel.text = Int(sender.value).description
            juiceMaker.store.inventory[.pineapple] = Int(sender.value)
        case 4:
            kiwiStockLabel.text = Int(sender.value).description
            juiceMaker.store.inventory[.kiwi] = Int(sender.value)
        case 5:
            mangoStockLabel.text = Int(sender.value).description
            juiceMaker.store.inventory[.mango] = Int(sender.value)
        default:
            break
        }
    }
    
    private func setFruitStepper(number stepper: Int) -> [UIStepper] {
        var fruitStepperArray: [UIStepper] = []
        
        for tagNumber in 1...stepper {
            guard let fruitStepper = self.view.viewWithTag(tagNumber) as? UIStepper
            else { break }
            fruitStepperArray.append(fruitStepper)
        }
        
        return fruitStepperArray
    }
    
    private func checkStepperValue() {
        var fruitStepper: [UIStepper] = setFruitStepper(number: 5)
        
        for fruit in Fruit.allCases {
            let stepper = fruitStepper.removeFirst()
            stepper.value = Double(juiceMaker.store.inventory[fruit] ?? 0)
        }
    }
    ```
    
    tagλ₯Ό μ¬μ©ν΄λ³΄λ, λ¬΄λΆλ³ν tagλ λ§€μ§λλ²μ²λΌ μ¬μ©λμ΄ μ€νλ € μ½λμ μ§κ΄μ±μ λ§μ΄ λ¨μ΄λ¨λ¦°λ€κ³  μκ°μ΄ λμκ³  UIView elements μ€ ν μ’λ₯μλ§ tagλ₯Ό μ€μ ν΄ μ£Όμ΄μΌ κ·Έλλ§ μ μ©ν tagμ νμ©μ΄λΌκ³  μκ°λμμ΅λλ€.
λ§μ½, UILabelκ³Ό UIStepper λͺ¨λλ₯Ό tagλ‘ μ¬μ©νλ©΄, tagλ²νΈλΌλ¦¬λ κ΅¬λΆμ μ€μΌνκ³  κ°―μκ° λ§μμ§μΌλ‘μ¨ μ΄λ€ λλ²κ° μ μκ°μ λ°λ₯Έ UIView elementμΈμ§ κ΅¬λΆμ΄ μ΄λ €μμ§κΈ° λλ¬Έμλλ€.

- `showSuccessAlert`κ³Ό `showFailAlert`λ‘ λΆλ¦¬λμ΄ μλ μΌλΏ μμ±μ νλμ ν¨μλ‘ κ΅¬ννκΈ° μν΄ `makeAlert` ν¨μλ‘ λ¦¬ν©ν λ§νμμ΅λλ€.
    - λ§€κ°λ³μ `checkSuccess`μμ Boolκ°μ λ°λΌ μΆκ° UIAlertActionμ΄ μμ±λλλ‘ κ΅¬ν
    - μΌλΏμμ titleκ³Ό λ©μΈμ§λ± μ¬λ¬κ°μ Stringμ΄ μ¬μ©λμ΄ λ³λμ nameSpaceλ₯Ό μΆκ°νκ³  νΈμΆνλ λ°©λ²λ μκ°ν΄ λ³΄μμΌλ, μ μ§λ³΄μ μΈ‘λ©΄μμλ μ’μμ§μ§λ§ μ½λμ κ°λμ±μ΄ λ¨μ΄μ§λ€κ³  μκ°λμ΄ κ΅¬ννμ§λ μμμ΅λλ€. μΆν κΈ°νμ΄ λ³κ²½λ  κ°λ₯μ±μ΄ μλ νλ‘μ νΈλΌλ©΄ nameSpaceλ₯Ό νμ©νλ νΈμ΄ Human Errorλ₯Ό λ°©μ§ν  μ μμ΄ μ’μ μ μμ κ² κ°μ΅λλ€.

    ```swift
    private func makeAlert(title: String, message: String, checkSuccess: Bool) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let ok = UIAlertAction(title: "νμΈ",
                               style: .default,
                               handler: {_ in
            if !checkSuccess {
                self.presentChangeInventoryViewController()
            }
        })
        if !checkSuccess {
            let cancel = UIAlertAction(title: "μ·¨μ",
                                       style: .cancel,
                                       handler: nil)
            
            alert.addAction(cancel)
        }
        
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    ```

## π μ°Έκ³  λ§ν¬

[Swift API Design Guidelines - Naming](https://swift.org/documentation/api-design-guidelines/)  
[Swift Language Guide - Initialization](https://docs.swift.org/swift-book/LanguageGuide/Initialization.html)  
[Swift Language Guide - Access Control](https://docs.swift.org/swift-book/LanguageGuide/AccessControl.html)  
[Swift Language Guide - Nested Types](https://docs.swift.org/swift-book/LanguageGuide/NestedTypes.html)   
[Human Interface Guidelines - Alerts](https://developer.apple.com/design/human-interface-guidelines/components/presentation/alerts/)  
[WWDC2015 - Implementing UI Designs in Interface Builder](https://developer.apple.com/videos/play/wwdc2015/407/)  
[Should Outlets Be Weak or Strong
](https://cocoacasts.com/should-outlets-be-weak-or-strong)[Should IBOutlet be weak or strong var?](https://stackoverflow.com/questions/29421614/should-iboutlet-be-weak-or-strong-var)  
[Documentation Archive - Outlets](https://developer.apple.com/library/archive/documentation/General/Conceptual/Devpedia-CocoaApp/Outlet.html)  
[viewWithTag](https://developer.apple.com/documentation/uikit/uiview/1622429-viewwithtag)  
[μΌκ³°λ·λ· - μ€ν λ μ΄μμ μ λ³΅νκΈ°](https://yagom.net/courses/autolayout/)

---

[π λ§¨ μλ‘ μ΄λνκΈ°](#μ₯¬μ€-λ©μ΄μ»€)
