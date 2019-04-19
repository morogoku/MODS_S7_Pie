.class public Lcom/android/systemui/aod/AODDozeBrightnessHostForwarder;
.super Lcom/android/systemui/aod/AODMachine$Service$Delegate;
.source "AODDozeBrightnessHostForwarder.java"


# instance fields
.field private final mHost:Lcom/android/systemui/doze/DozeHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aod/AODMachine$Service;Lcom/android/systemui/doze/DozeHost;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/aod/AODMachine$Service$Delegate;-><init>(Lcom/android/systemui/aod/AODMachine$Service;)V

    iput-object p2, p0, Lcom/android/systemui/aod/AODDozeBrightnessHostForwarder;->mHost:Lcom/android/systemui/doze/DozeHost;

    return-void
.end method


# virtual methods
.method public semSetDozeScreenBrightness(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/aod/AODMachine$Service$Delegate;->semSetDozeScreenBrightness(II)V

    iget-object v0, p0, Lcom/android/systemui/aod/AODDozeBrightnessHostForwarder;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0, p2}, Lcom/android/systemui/doze/DozeHost;->setDozeScreenBrightness(I)V

    return-void
.end method
