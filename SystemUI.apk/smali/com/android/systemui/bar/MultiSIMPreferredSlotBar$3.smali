.class Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$3;
.super Landroid/os/Handler;
.source "MultiSIMPreferredSlotBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const-string v0, "MultiSIMPreferredSlotBar"

    const-string v1, "UIHandler MESSAGE_EMPTY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "MultiSIMPreferredSlotBar"

    const-string v1, "MESSAGE_UPDATE_MULTISIM_PREFERRED_DATA_BUTTON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$902(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$800(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$800(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->updateTextColor()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$3;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void
.end method
