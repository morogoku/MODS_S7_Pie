.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;
.super Ljava/lang/Object;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarqueeModel"
.end annotation


# instance fields
.field private cpEnd:I

.field private cpStart:I

.field private direction:I

.field private dpBottom:I

.field private dpEnd:I

.field private dpStart:I

.field private dpTop:I

.field private horizontalShift:I

.field private maxShiftSize:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private verticalShift:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->direction:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->horizontalShift:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->verticalShift:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->dpBottom:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->dpBottom:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->horizontalShift:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->horizontalShift:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->direction:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->direction:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->verticalShift:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->verticalShift:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->maxShiftSize:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->maxShiftSize:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->cpStart:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->cpStart:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->dpStart:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->dpStart:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->cpEnd:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->cpEnd:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->dpEnd:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->dpEnd:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->dpTop:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->dpTop:I

    return p1
.end method
