.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$6$HdXCfbzd9sbAhNGwQdMRWaAsEdQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$6;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$6$HdXCfbzd9sbAhNGwQdMRWaAsEdQ;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$6$HdXCfbzd9sbAhNGwQdMRWaAsEdQ;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$6;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;->lambda$onDataSaverChanged$0(Lcom/android/systemui/statusbar/phone/AutoTileManager$6;)V

    return-void
.end method
