.class Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeRow"
.end annotation


# instance fields
.field private anim:Landroid/animation/ObjectAnimator;

.field private animTargetProgress:I

.field private cachedIconRes:I

.field private header:Landroid/widget/TextView;

.field private icon:Landroid/widget/ImageButton;

.field private iconMuteRes:I

.field private iconRes:I

.field private iconState:I

.field private important:Z

.field private lastAudibleLevel:I

.field private requestedLevel:I

.field private slider:Landroid/widget/SeekBar;

.field private ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

.field private stream:I

.field private tracking:Z

.field private userAttempt:J

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->requestedLevel:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->cachedIconRes:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->cachedIconRes:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->iconMuteRes:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->iconMuteRes:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->stream:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->stream:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->iconRes:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->iconRes:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->important:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->important:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->iconState:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->iconState:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    return v0
.end method

.method static synthetic access$4802(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->userAttempt:J

    return-wide v0
.end method

.method static synthetic access$5102(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->userAttempt:J

    return-wide p1
.end method

.method static synthetic access$5300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->tracking:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->tracking:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->requestedLevel:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->requestedLevel:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->animTargetProgress:I

    return v0
.end method

.method static synthetic access$5502(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->animTargetProgress:I

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeRow [stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", important="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->important:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
