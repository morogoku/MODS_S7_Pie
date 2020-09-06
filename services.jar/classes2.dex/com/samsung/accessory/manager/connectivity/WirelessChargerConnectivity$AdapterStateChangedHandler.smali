.class Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$AdapterStateChangedHandler;
.super Ljava/lang/Object;
.source "WirelessChargerConnectivity.java"

# interfaces
.implements Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterStateChangedHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$AdapterStateChangedHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    return-void
.end method
