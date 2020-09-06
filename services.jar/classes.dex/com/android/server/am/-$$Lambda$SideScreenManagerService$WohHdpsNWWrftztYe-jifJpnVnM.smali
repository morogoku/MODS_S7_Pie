.class public final synthetic Lcom/android/server/am/-$$Lambda$SideScreenManagerService$WohHdpsNWWrftztYe-jifJpnVnM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/SideScreenManagerService;

.field private final synthetic f$1:Landroid/animation/ValueAnimator;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SideScreenManagerService;Landroid/animation/ValueAnimator;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$WohHdpsNWWrftztYe-jifJpnVnM;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$WohHdpsNWWrftztYe-jifJpnVnM;->f$1:Landroid/animation/ValueAnimator;

    iput p3, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$WohHdpsNWWrftztYe-jifJpnVnM;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$WohHdpsNWWrftztYe-jifJpnVnM;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$WohHdpsNWWrftztYe-jifJpnVnM;->f$1:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$WohHdpsNWWrftztYe-jifJpnVnM;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/am/SideScreenManagerService;->lambda$getSideScreenStacksMovementAnimator$8(Lcom/android/server/am/SideScreenManagerService;Landroid/animation/ValueAnimator;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
