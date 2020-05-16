.class Lcom/android/systemui/util/DesktopManager$2;
.super Landroid/os/Handler;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/DesktopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/DesktopManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/DesktopManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager$2;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_6

    const/high16 v1, 0x20000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager$2;->this$0:Lcom/android/systemui/util/DesktopManager;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-static {v1, v2}, Lcom/android/systemui/util/DesktopManager;->access$900(Lcom/android/systemui/util/DesktopManager;Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager$2;->this$0:Lcom/android/systemui/util/DesktopManager;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_3

    move v2, v3

    nop

    :cond_3
    invoke-static {v1, v2}, Lcom/android/systemui/util/DesktopManager;->access$800(Lcom/android/systemui/util/DesktopManager;Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager$2;->this$0:Lcom/android/systemui/util/DesktopManager;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_5

    move v2, v3

    nop

    :cond_5
    invoke-static {v1, v2}, Lcom/android/systemui/util/DesktopManager;->access$700(Lcom/android/systemui/util/DesktopManager;Z)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager$2;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v1}, Lcom/android/systemui/util/DesktopManager;->access$600(Lcom/android/systemui/util/DesktopManager;)V

    nop

    :goto_0
    return-void
.end method
