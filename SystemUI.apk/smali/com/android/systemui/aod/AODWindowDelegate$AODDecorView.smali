.class Lcom/android/systemui/aod/AODWindowDelegate$AODDecorView;
.super Landroid/widget/FrameLayout;
.source "AODWindowDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/aod/AODWindowDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AODDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/aod/AODWindowDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aod/AODWindowDelegate;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/aod/AODWindowDelegate$AODDecorView;->this$0:Lcom/android/systemui/aod/AODWindowDelegate;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODWindowDelegate$AODDecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {p1, v0}, Lcom/android/systemui/aod/AODWindowDelegate;->access$002(Lcom/android/systemui/aod/AODWindowDelegate;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    return-void
.end method
