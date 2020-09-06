.class Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;
.super Ljava/lang/Object;
.source "ModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/ModeChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModeToModeChangeInfo"
.end annotation


# static fields
.field static final DUAL_TO_STANDALONE:I = 0x1

.field static final STANDALONE_TO_DUAL:I = 0x2


# instance fields
.field private mModeToMode:I

.field private mTopStackId:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mTopStackId:I

    iput p1, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mModeToMode:I

    return-void
.end method

.method static modeToModeToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "STANDALONE_TO_DUAL"

    return-object v0

    :pswitch_18
    const-string v0, "DUAL_TO_STANDALONE"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method getModeToMode()I
    .registers 2

    iget v0, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mModeToMode:I

    return v0
.end method

.method getTopStackId()I
    .registers 2

    iget v0, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mTopStackId:I

    return v0
.end method

.method setTopStackId(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mTopStackId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(mModeToMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mModeToMode:I

    invoke-static {v1}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->modeToModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTopStackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mTopStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
