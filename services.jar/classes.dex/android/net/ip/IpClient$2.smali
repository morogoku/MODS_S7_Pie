.class Landroid/net/ip/IpClient$2;
.super Ljava/lang/Object;
.source "IpClient.java"

# interfaces
.implements Lcom/android/server/net/NetlinkTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ip/IpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;Landroid/net/ip/IpClient$Dependencies;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpClient;


# direct methods
.method constructor <init>(Landroid/net/ip/IpClient;)V
    .registers 2

    iput-object p1, p0, Landroid/net/ip/IpClient$2;->this$0:Landroid/net/ip/IpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpClient$2;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$200(Landroid/net/ip/IpClient;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetlinkTracker Callback update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/ip/IpClient$2;->this$0:Landroid/net/ip/IpClient;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient;->sendMessage(I)V

    return-void
.end method
