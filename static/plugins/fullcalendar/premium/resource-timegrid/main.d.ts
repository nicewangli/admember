// Generated by dts-bundle v0.7.3-fork.1
// Dependencies for this module:
//   ../../../../../@fullcalendar/core
//   ../../../../../@fullcalendar/timegrid
//   ../../../../../@fullcalendar/resource-common
//   ../../../../../@fullcalendar/resource-daygrid

declare module '@fullcalendar/resource-timegrid' {
    import ResourceTimeGridView from '@fullcalendar/resource-timegrid/ResourceTimeGridView';
    export { ResourceTimeGridView };
    export { default as ResourceTimeGrid } from '@fullcalendar/resource-timegrid/ResourceTimeGrid';
    const _default: import("@fullcalendar/core").PluginDef;
    export default _default;
}

declare module '@fullcalendar/resource-timegrid/ResourceTimeGridView' {
    import { ComponentContext } from '@fullcalendar/core';
    import { AbstractTimeGridView } from '@fullcalendar/timegrid';
    import { ResourceDayHeader, ResourceViewProps } from '@fullcalendar/resource-common';
    import { ResourceDayGrid } from '@fullcalendar/resource-daygrid';
    import ResourceTimeGrid from '@fullcalendar/resource-timegrid/ResourceTimeGrid';
    export { ResourceTimeGridView as default, ResourceTimeGridView };
    class ResourceTimeGridView extends AbstractTimeGridView {
        static needsResourceData: boolean;
        props: ResourceViewProps;
        header: ResourceDayHeader;
        resourceTimeGrid: ResourceTimeGrid;
        resourceDayGrid: ResourceDayGrid;
        _processOptions(options: any): void;
        render(props: ResourceViewProps, context: ComponentContext): void;
        _renderSkeleton(context: ComponentContext): void;
        _unrenderSkeleton(): void;
        renderNowIndicator(date: any): void;
    }
}

declare module '@fullcalendar/resource-timegrid/ResourceTimeGrid' {
    import { DateSpan, DateComponent, DateProfile, EventStore, EventUiHash, EventInteractionState, ComponentContext, DateMarker, Hit } from '@fullcalendar/core';
    import { TimeGrid } from '@fullcalendar/timegrid';
    import { AbstractResourceDayTable } from '@fullcalendar/resource-common';
    export interface ResourceTimeGridProps {
        dateProfile: DateProfile | null;
        resourceDayTable: AbstractResourceDayTable;
        businessHours: EventStore;
        eventStore: EventStore;
        eventUiBases: EventUiHash;
        dateSelection: DateSpan | null;
        eventSelection: string;
        eventDrag: EventInteractionState | null;
        eventResize: EventInteractionState | null;
    }
    export { ResourceTimeGrid as default, ResourceTimeGrid };
    class ResourceTimeGrid extends DateComponent<ResourceTimeGridProps> {
        timeGrid: TimeGrid;
        constructor(timeGrid: TimeGrid);
        firstContext(context: ComponentContext): void;
        destroy(): void;
        render(props: ResourceTimeGridProps, context: ComponentContext): void;
        renderNowIndicator(date: DateMarker): void;
        buildPositionCaches(): void;
        queryHit(positionLeft: number, positionTop: number): Hit;
    }
}

