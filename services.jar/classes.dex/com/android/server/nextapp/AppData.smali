.class Lcom/android/server/nextapp/AppData;
.super Ljava/lang/Object;
.source "BigDataService.java"


# instance fields
.field public accuracy:D

.field public avgHitLaunchTime:I

.field public avgNoHitLaunchTime:I

.field public benefit:I

.field public compName:Ljava/lang/String;

.field public preRatio:D

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDII)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/nextapp/AppData;->compName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/nextapp/AppData;->version:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/nextapp/AppData;->accuracy:D

    iput-wide p5, p0, Lcom/android/server/nextapp/AppData;->preRatio:D

    iput p7, p0, Lcom/android/server/nextapp/AppData;->avgHitLaunchTime:I

    iput p8, p0, Lcom/android/server/nextapp/AppData;->avgNoHitLaunchTime:I

    if-lez p8, :cond_18

    if-lez p7, :cond_18

    sub-int v0, p8, p7

    iput v0, p0, Lcom/android/server/nextapp/AppData;->benefit:I

    goto :goto_1b

    :cond_18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/nextapp/AppData;->benefit:I

    :goto_1b
    return-void
.end method
