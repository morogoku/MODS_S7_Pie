.class Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardPunchHoleVIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->getLayoutDirection()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {v2}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$100(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {v2}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$200(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v2, v2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyguardConfigurationChanged() density "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {v4}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$100(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", direction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {v4}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$200(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {v2, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$102(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;I)I

    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {v2, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$202(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;I)I

    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {v2}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$300(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    :cond_1
    return-void
.end method
