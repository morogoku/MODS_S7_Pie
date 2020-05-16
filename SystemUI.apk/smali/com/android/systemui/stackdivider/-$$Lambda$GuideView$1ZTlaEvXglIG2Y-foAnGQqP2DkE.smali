.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$GuideView$1ZTlaEvXglIG2Y-foAnGQqP2DkE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/stackdivider/GuideView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/GuideView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideView$1ZTlaEvXglIG2Y-foAnGQqP2DkE;->f$0:Lcom/android/systemui/stackdivider/GuideView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideView$1ZTlaEvXglIG2Y-foAnGQqP2DkE;->f$0:Lcom/android/systemui/stackdivider/GuideView;

    invoke-static {v0, p1}, Lcom/android/systemui/stackdivider/GuideView;->lambda$dismiss$1(Lcom/android/systemui/stackdivider/GuideView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
