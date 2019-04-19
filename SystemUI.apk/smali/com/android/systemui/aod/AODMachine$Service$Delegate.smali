.class public Lcom/android/systemui/aod/AODMachine$Service$Delegate;
.super Ljava/lang/Object;
.source "AODMachine.java"

# interfaces
.implements Lcom/android/systemui/aod/AODMachine$Service;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/aod/AODMachine$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegate"
.end annotation


# instance fields
.field private final mDelegate:Lcom/android/systemui/aod/AODMachine$Service;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aod/AODMachine$Service;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/aod/AODMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/aod/AODMachine$Service;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/aod/AODMachine$Service;

    invoke-interface {v0}, Lcom/android/systemui/aod/AODMachine$Service;->finish()V

    return-void
.end method

.method public semSetDozeScreenBrightness(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/aod/AODMachine$Service;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/aod/AODMachine$Service;->semSetDozeScreenBrightness(II)V

    return-void
.end method

.method public setDozeScreenState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/aod/AODMachine$Service;

    invoke-interface {v0, p1}, Lcom/android/systemui/aod/AODMachine$Service;->setDozeScreenState(I)V

    return-void
.end method

.method public updateAODWindowLayoutParams()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/aod/AODMachine$Service;

    invoke-interface {v0}, Lcom/android/systemui/aod/AODMachine$Service;->updateAODWindowLayoutParams()V

    return-void
.end method
