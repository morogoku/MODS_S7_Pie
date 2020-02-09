.class Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector$1;
.super Ljava/lang/Object;
.source "SecStatusBarIconBugDetector.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector$1;->this$0:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector$1;->this$0:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->access$000(Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector$1;->this$0:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->access$000(Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector$1;->this$0:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector$1;->this$0:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->access$000(Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->access$100(Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector$1;->this$0:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector$1;->this$0:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->access$000(Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->access$200(Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector$1;->this$0:Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SecStatusBarIconBugDetector;->removeOnGlobalLayoutListener()V

    return-void
.end method
