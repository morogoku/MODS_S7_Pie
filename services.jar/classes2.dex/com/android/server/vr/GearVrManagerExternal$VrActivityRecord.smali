.class public Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;
.super Ljava/lang/Object;
.source "GearVrManagerExternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerExternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VrActivityRecord"
.end annotation


# instance fields
.field callingPackage:Landroid/content/ComponentName;

.field requestedVrComponent:Landroid/content/ComponentName;

.field userId:I

.field vrActivityType:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;ILandroid/content/ComponentName;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->vrActivityType:I

    iput-object p2, p0, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->userId:I

    iput-object p4, p0, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->callingPackage:Landroid/content/ComponentName;

    return-void
.end method
