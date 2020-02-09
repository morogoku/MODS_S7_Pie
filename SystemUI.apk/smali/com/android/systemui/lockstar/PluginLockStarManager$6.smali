.class Lcom/android/systemui/lockstar/PluginLockStarManager$6;
.super Ljava/lang/Object;
.source "PluginLockStarManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/lockstar/PluginLockStarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndicationTextView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLockIconView(Ljava/lang/String;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3604a489

    if-eq v2, v3, :cond_1

    const v3, 0xd278cb8

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "biometric"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "secure"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d0093

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBiometricLockIconCallback(Landroid/view/View;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d00b1

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    nop

    :cond_3
    :goto_1
    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setIndicationTextView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1900(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationTextForLockStar(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    return-void
.end method

.method public setLockIconView(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3604a489

    if-eq v1, v2, :cond_1

    const v2, 0xd278cb8

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "biometric"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "secure"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1900(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setLockIconForLockStar(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$1900(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setLockSecureIconForLockStar(Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)V

    nop

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
