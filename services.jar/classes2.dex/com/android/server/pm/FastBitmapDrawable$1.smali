.class Lcom/android/server/pm/FastBitmapDrawable$1;
.super Ljava/lang/Object;
.source "FastBitmapDrawable.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/FastBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_a

    div-float v0, p1, v0

    return v0

    :cond_a
    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_14

    return v1

    :cond_14
    sub-float/2addr v1, p1

    const v0, 0x3f333333    # 0.7f

    div-float/2addr v1, v0

    return v1
.end method
