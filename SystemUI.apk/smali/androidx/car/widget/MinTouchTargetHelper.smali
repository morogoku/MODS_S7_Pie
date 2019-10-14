.class Landroidx/car/widget/MinTouchTargetHelper;
.super Ljava/lang/Object;
.source "MinTouchTargetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ensureThat(Landroid/view/View;)Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;-><init>(Landroid/view/View;Landroidx/car/widget/MinTouchTargetHelper$1;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
