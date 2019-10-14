.class final Lcom/att/iqi/WiFiReceiver$ScanResultComparator;
.super Ljava/lang/Object;
.source "WiFiReceiver.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/WiFiReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScanResultComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/net/wifi/ScanResult;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/att/iqi/WiFiReceiver$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver$ScanResultComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I
    .registers 5

    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p2, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/net/wifi/ScanResult;

    check-cast p2, Landroid/net/wifi/ScanResult;

    invoke-virtual {p0, p1, p2}, Lcom/att/iqi/WiFiReceiver$ScanResultComparator;->compare(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I

    move-result p1

    return p1
.end method
