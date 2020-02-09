.class Lcom/android/server/wm/AppWindowToken$DimAnimInfo;
.super Ljava/lang/Object;
.source "AppWindowToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppWindowToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DimAnimInfo"
.end annotation


# instance fields
.field mDimAbove:Z

.field mDimmer:Lcom/android/server/wm/Dimmer;

.field mEndAlpha:F

.field mStartAlpha:F

.field mTriggered:Z

.field final synthetic this$0:Lcom/android/server/wm/AppWindowToken;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->this$0:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mStartAlpha:F

    iput v0, p0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mEndAlpha:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mTriggered:Z

    return-void
.end method


# virtual methods
.method hasDimAnim()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mStartAlpha:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mEndAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method isDimAbove()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mDimAbove:Z

    return v0
.end method

.method isTriggered()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mTriggered:Z

    return v0
.end method

.method reset()V
    .registers 2

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mStartAlpha:F

    iput v0, p0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mEndAlpha:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mTriggered:Z

    return-void
.end method

.method setDimAnimInfo(FFZ)V
    .registers 5

    iput p1, p0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mStartAlpha:F

    iput p2, p0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mEndAlpha:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mTriggered:Z

    iput-boolean p3, p0, Lcom/android/server/wm/AppWindowToken$DimAnimInfo;->mDimAbove:Z

    return-void
.end method
