import UIKit

var str = "Hello, struct"


// 스위프트 대부분의 타입은 구조체(값 타입)
// 타입명은 대문자 카멜케이스로 정의
struct Sample {
    // 가변 프로퍼티
    var mutableProperty: Int = 100
    
    // 불변 프로퍼티
    let immutableProperty: Int = 100
    
    // 타입 프로퍼티
    static var typeProperty: Int = 100
    
    // 인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    // 타입 메서드
    static func typeMethod() {
        print("type method")
    }
}



// 구조체 사용
var mutable: Sample = Sample()

mutable.mutableProperty = 200

// 불변 프로퍼티(immutableProperty)는 인스턴스 생성 후 수정불가
// 컴파일 오류 발생
//mutable.immutableProperty = 200


// 불변 인스턴스
let immutable: Sample = Sample()

// 불변 인스턴스는 아무리 가변 프로퍼티라도
// 인스턴스 생성 후에 수정할 수 없습니다
// 컴파일 오류 발생
//immutable.mutableProperty = 200
//immutable.immutableProperty = 200


// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // type method

// 인스턴스에서는 타입 프로퍼티나 타입 메서드를
// 사용할 수 없습니다
// 컴파일 오류 발생
//mutable.typeProperty = 400
//mutable.typeMethod()



// 학생 구조체 만들기
struct Student {
    // 가변 프로퍼티
    var name: String = "unknown"

    // 키워드도 `로 묶어주면 이름으로 사용할 수 있습니다
    var `class`: String = "Swift"
    
    // 타입 메서드
    static func selfIntroduce() {
        print("학생타입입니다")
    }
    
    // 인스턴스 메서드
    // self는 인스턴스 자신을 지칭하며, 몇몇 경우를 제외하고 사용은 선택사항입니다
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

// 타입 메서드 사용
Student.selfIntroduce() // 학생타입입니다

// 가변 인스턴스 생성
var choisueun: Student = Student()
choisueun.name = "choisueun"
choisueun.class = "스위프트"
choisueun.selfIntroduce()   // 저는 스위프트반 choisueun입니다

// 불변 인스턴스 생성
let yoonar: Student = Student()

// 불변 인스턴스이므로 프로퍼티 값 변경 불가
// 컴파일 오류 발생
//yoonar.name = "yoonar"
yoonar.selfIntroduce() // 저는 Swift반 unknown입니다
