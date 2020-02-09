.class Lcom/android/systemui/bar/ScrollableQuickConnectBar$4;
.super Landroid/content/BroadcastReceiver;
.source "ScrollableQuickConnectBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bar/ScrollableQuickConnectBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/ScrollableQuickConnectBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/ScrollableQuickConnectBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$4;->this$0:Lcom/android/systemui/bar/ScrollableQuickConnectBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$4;->this$0:Lcom/android/systemui/bar/ScrollableQuickConnectBar;

    iget-object v0, v0, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->TAG:Ljava/lang/String;

    const-string v1, "intent receive"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$4;->this$0:Lcom/android/systemui/bar/ScrollableQuickConnectBar;

    invoke-virtual {v0, p2}, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->receiveRemoteView(Landroid/content/Intent;)V

    return-void
.end method
