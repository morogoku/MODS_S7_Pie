.class Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$2;
.super Landroid/database/ContentObserver;
.source "ExternalClockProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$2;->this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "ExternalClockProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$2;->this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-static {v0, p2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->access$200(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/net/Uri;)V

    return-void
.end method
