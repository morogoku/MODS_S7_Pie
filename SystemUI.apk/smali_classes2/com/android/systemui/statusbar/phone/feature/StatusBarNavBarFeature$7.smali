.class Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;
.super Ljava/lang/Object;
.source "StatusBarNavBarFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$500(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    move-result-object v0

    const-string v1, "StatusBarNavBarFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAddNavigationBarViewRunnable mNavigationBarShouldAdd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$700(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$700(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$800(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$800(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setNavigationBarWindow(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$802(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;Landroid/view/View;)Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$900(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarWindow()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$600(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->getNavigationBarLayoutParam(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarWindow()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarWindow()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$802(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$900(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarWindow()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setNavigationBarWindow(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$500(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    move-result-object v1

    const-string v2, "StatusBarNavBarFeature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAddNavigationBarViewRunnable show="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;->this$0:Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->access$700(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
