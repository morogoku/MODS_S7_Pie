.class public Lcom/android/systemui/widget/SystemUITextView$ResData;
.super Ljava/lang/Object;
.source "SystemUITextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/widget/SystemUITextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResData"
.end annotation


# instance fields
.field public mAdaptiveColorMain:Ljava/lang/String;

.field private mCompoundDrawable:Ljava/lang/String;

.field private mCompoundDrawableId:I

.field private mCompoundPadding:Ljava/lang/String;

.field private mCompoundPaddingId:I

.field private mCompoundScale:Ljava/lang/String;

.field private mCompoundScaleId:I

.field private mOriginColor:Ljava/lang/String;

.field private mOriginColorId:I

.field private mOriginShadowColor:Ljava/lang/String;

.field public mOriginShadowColorId:I

.field private mThemeColor:Ljava/lang/String;

.field private mThemeColorId:I

.field private mThemeShadowColor:Ljava/lang/String;

.field private mThemeShadowColorId:I

.field private mWhiteBgColor:Ljava/lang/String;

.field private mWhiteBgColorId:I

.field public mWhiteBgShadowColor:Ljava/lang/String;

.field public mWhiteBgShadowColorId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/widget/SystemUITextView$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginColorId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginColorId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/widget/SystemUITextView$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeColorId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeColorId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeShadowColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeShadowColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundDrawable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundDrawable:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundScale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundScale:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundPadding:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundPadding:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/widget/SystemUITextView$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeShadowColorId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeShadowColorId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/widget/SystemUITextView$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColorId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColorId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/widget/SystemUITextView$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundDrawableId:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundDrawableId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/widget/SystemUITextView$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundScaleId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundScaleId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/widget/SystemUITextView$ResData;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundPaddingId:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mCompoundPaddingId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mThemeColor:Ljava/lang/String;

    return-object p1
.end method
