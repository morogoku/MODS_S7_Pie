.class public Lcom/android/server/usb/UsbStringTable;
.super Ljava/lang/Object;
.source "UsbStringTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbStringTable$UsbClassMap;
    }
.end annotation


# static fields
.field private static final STRING_USB_APPLICATION_SPECIFIC:Ljava/lang/String; = "Application Specific"

.field private static final STRING_USB_AUDIO:Ljava/lang/String; = "Audio"

.field private static final STRING_USB_CDC_CONTROL:Ljava/lang/String; = "CDC Control"

.field private static final STRING_USB_CDC_DATA:Ljava/lang/String; = "CDC Data"

.field private static final STRING_USB_CONTENT_SECURITY:Ljava/lang/String; = "Content Security"

.field private static final STRING_USB_DEVICE:Ljava/lang/String; = "Interface Descriptors"

.field private static final STRING_USB_DIAGNOSTIC_DEVICE:Ljava/lang/String; = "Diagnostic Device"

.field private static final STRING_USB_HID:Ljava/lang/String; = "HID"

.field private static final STRING_USB_HUB:Ljava/lang/String; = "Hub"

.field private static final STRING_USB_IMAGE:Ljava/lang/String; = "Image"

.field private static final STRING_USB_MASS_STROAGE:Ljava/lang/String; = "Mass Storage"

.field private static final STRING_USB_MISCELLANEOUS:Ljava/lang/String; = "Miscellaneous"

.field private static final STRING_USB_PERSONAL_HEALTHCARE:Ljava/lang/String; = "Personal Healthcare"

.field private static final STRING_USB_PHYSICAL:Ljava/lang/String; = "Physical"

.field private static final STRING_USB_PRINTER:Ljava/lang/String; = "Printer"

.field private static final STRING_USB_SMART_CARD:Ljava/lang/String; = "Smart Card"

.field private static final STRING_USB_VENDOR_SPECIFIC:Ljava/lang/String; = "Vendor Specific"

.field private static final STRING_USB_VIDEO:Ljava/lang/String; = "Video"

.field private static final STRING_USB_WIRELESS_CONTROLLER:Ljava/lang/String; = "Wireless Controller"

.field private static final TAG:Ljava/lang/String; = "UsbDevice"


# instance fields
.field private final UsbClassSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/usb/UsbStringTable$UsbClassMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Interface Descriptors"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v2, "Audio"

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v2, "CDC Control"

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v2, "HID"

    const/4 v3, 0x3

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v2, "Physical"

    const/4 v3, 0x5

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Image"

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v2, "Printer"

    const/4 v3, 0x7

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v2, "Mass Storage"

    const/16 v3, 0x8

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Hub"

    const-string v7, "Full speed Hub"

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Hub"

    const-string v7, "Hi-speed hub with single TT"

    const/4 v5, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Hub"

    const-string v7, "Hi-speed hub with multiple TTs"

    const/4 v5, 0x2

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v2, "CDC Data"

    const/16 v3, 0xa

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v2, "Smart Card"

    const/16 v3, 0xb

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Content Security"

    const/16 v3, 0xd

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v2, "Video"

    const/16 v3, 0xe

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v2, "Personal Healthcare"

    const/16 v3, 0xf

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Diagnostic Device"

    const/16 v3, 0xdc

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Wireless Controller"

    const-string v7, "Bluetooth Programming Interface"

    const/16 v3, 0xe0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Wireless Controller"

    const-string v7, "UWB Radio Control Interface"

    const/4 v5, 0x2

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Wireless Controller"

    const-string v7, "Remote NDIS"

    const/4 v5, 0x3

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Wireless Controller"

    const-string v7, "Bluetooth AMP Controller"

    const/4 v5, 0x4

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Wireless Controller"

    const-string v7, "Host Wire Adapter Control/Data interface"

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Wireless Controller"

    const-string v7, "Device Wire Adapter Control/Data interface"

    const/4 v5, 0x2

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Wireless Controller"

    const-string v7, "Device Wire Adapter Isochronous interface"

    const/4 v5, 0x3

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Miscellaneous"

    const-string v7, "Active Sync device"

    const/16 v3, 0xef

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Miscellaneous"

    const-string v7, "Palm Sync"

    const/4 v5, 0x2

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Miscellaneous"

    const-string v7, "Interface Association Descriptor"

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Miscellaneous"

    const-string v7, "Wire Adapter Multifunction"

    const/4 v5, 0x2

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Miscellaneous"

    const-string v7, "Cable Based Association Framework"

    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Miscellaneous"

    const-string v7, "Device Firmware Upgrade"

    const/16 v3, 0xfe

    const/4 v4, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Miscellaneous"

    const-string v7, "IRDA Bridge device"

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Miscellaneous"

    const-string v7, "USB Test and Measurement Device"

    const/4 v4, 0x3

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v6, "Miscellaneous"

    const-string v7, "USB Test and Measurement Device"

    const/4 v5, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const-string v2, "Vendor Specific"

    const/16 v3, 0xff

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public findString(III)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_3
    const-string v1, "Unknown device"

    iget-object v2, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->equals(III)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_2c

    :cond_2b
    goto :goto_13

    :cond_2c
    :goto_2c
    monitor-exit v0

    return-object v1

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method
