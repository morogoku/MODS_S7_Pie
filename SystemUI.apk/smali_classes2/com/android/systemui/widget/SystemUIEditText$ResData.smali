.class Lcom/android/systemui/widget/SystemUIEditText$ResData;
.super Ljava/lang/Object;
.source "SystemUIEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/widget/SystemUIEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResData"
.end annotation


# instance fields
.field private mAdaptiveColorMain:Ljava/lang/String;

.field private mOriginColor:Ljava/lang/String;

.field private mOriginColorId:I

.field private mOriginShadowColor:Ljava/lang/String;

.field private mOriginShadowColorId:I

.field private mThemeColor:Ljava/lang/String;

.field private mThemeColorId:I

.field private mThemeShadowColor:Ljava/lang/String;

.field private mThemeShadowColorId:I

.field private mWhiteBgColor:Ljava/lang/String;

.field private mWhiteBgColorId:I

.field private mWhiteBgShadowColor:Ljava/lang/String;

.field private mWhiteBgShadowColorId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/widget/SystemUIEditText$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginColorId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginColorId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginShadowColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginShadowColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeShadowColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeShadowColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginShadowColorId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mOriginShadowColorId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeColorId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeColorId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeShadowColorId:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mThemeShadowColorId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mAdaptiveColorMain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mAdaptiveColorMain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgColorId:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgColorId:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgShadowColorId:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUIEditText$ResData;->mWhiteBgShadowColorId:I

    return p1
.end method
