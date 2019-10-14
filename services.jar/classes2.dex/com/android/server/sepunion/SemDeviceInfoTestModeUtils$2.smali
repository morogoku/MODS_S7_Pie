.class Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;
.super Landroid/database/ContentObserver;
.source "SemDeviceInfoTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    # invokes: Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->getTestModeFromSetting()I
    invoke-static {v0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->access$100(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    # invokes: Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->updateDeviceInfoTestMode(I)V
    invoke-static {v1, v0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->access$200(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;I)V

    return-void
.end method
