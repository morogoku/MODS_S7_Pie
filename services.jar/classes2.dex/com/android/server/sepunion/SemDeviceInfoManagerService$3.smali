.class Lcom/android/server/sepunion/SemDeviceInfoManagerService$3;
.super Ljava/lang/Object;
.source "SemDeviceInfoManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemDeviceInfoManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$3;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceInfoTestModeChanged()V
    .registers 1

    return-void
.end method
