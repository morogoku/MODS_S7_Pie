.class Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardServiceBoxPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->dismissLockStarServiceBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAnimationCancel$1(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onAnimationEnd$0(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->val$pkgName:Ljava/lang/String;

    new-instance v2, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPage$5$gXFEddVUcGvtVendLyCHZJB3dps;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPage$5$gXFEddVUcGvtVendLyCHZJB3dps;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->val$pkgName:Ljava/lang/String;

    new-instance v2, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPage$5$Ru1kDAKsAcnq9XPM0uY364ntKTM;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPage$5$Ru1kDAKsAcnq9XPM0uY364ntKTM;-><init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->setFullscreenMode(Z)V

    return-void
.end method
